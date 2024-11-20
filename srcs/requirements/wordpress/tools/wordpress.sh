#!/bin/bash

# Check if WordPress is already installed
if [ ! -f "/var/www/html/wp-config.php" ]; then
	echo "Configuring WordPress..."

	# Configure WordPress
	wp config create --allow-root                       \
					 --dbname=$MARIA_NAME               \
					 --dbuser=$MARIA_USER               \
					 --dbpass=$MARIA_PASSWORD      		\
					 --dbhost=$MARIA_HOST               \
					 --path='/var/www/html'

	# Install WordPress 
	wp core install --url=$WP_URL                       \
					--title=$WP_TITLE                   \
					--admin_user=$WP_ADMIN              \
					--admin_password=$WP_ADMIN_PASSWORD \
					--admin_email=$WP_ADMIN_EMAIL       \
					--skip-email						\
					--allow-root

	# Create user
	wp user create $WP_USER $WP_USER_EMAIL              \
				   --role=subscriber                    \
				   --user_pass=$WP_USER_PASSWORD        \
				   --allow-root

	wp option update home 'https://mbatteux.42.fr' --allow-root
	wp option update siteurl 'https://mbatteux.42.fr' --allow-root
else
	echo "WordPress is already configured."
fi

exec "$@"