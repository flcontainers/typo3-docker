#!/usr/bin/env bash
set -Eeuo pipefail

if [[ "$1" == apache2* ]] || [ "$1" = 'php-fpm' ]; then
	uid="$(id -u)"
	gid="$(id -g)"
	if [ "$uid" = '0' ]; then
		case "$1" in
			apache2*)
				user="${APACHE_RUN_USER:-www-data}"
				group="${APACHE_RUN_GROUP:-www-data}"

				# strip off any '#' symbol ('#1000' is valid syntax for Apache)
				pound='#'
				user="${user#$pound}"
				group="${group#$pound}"
				;;
			*) # php-fpm
				user='www-data'
				group='www-data'
				;;
		esac
	else
		user="$uid"
		group="$gid"
	fi

	if [ ! -e index.php ]; then
		# if the directory exists and Typo3 doesn't appear to be installed AND the permissions of it are root:root, let's chown it (likely a Docker-created directory)
		if [ "$uid" = '0' ] && [ "$(stat -c '%u:%g' .)" = '0:0' ]; then
			chown "$user:$group" .
		fi

		echo >&2 "Typo3 not found in $PWD - copying now..."
		cp /usr/src/typo3/.htaccess .htaccess
		cp /usr/src/typo3/.user.ini .user.ini
		ln -s /usr/src/typo3 typo3_src
		ln -s typo3_src/index.php index.php
		ln -s typo3_src/typo3 typo3
		chown -R www-data:www-data /var/www
		touch FIRST_INSTALL
		echo >&2 "Complete! Typo3 has been successfully copied to $PWD"
	fi
fi

exec "$@"
