#!/bin/sh

#install wp-cli
mkdir /home/vagrant/bin
curl -s https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar > /home/vagrant/bin/wp
chmod 755 /home/vagrant/bin/wp

#create public directory
mkdir /home/vagrant/Code/wordpress
cd /home/vagrant/Code/wordpress
#download wp core
/home/vagrant/bin/wp core download
#create wp-config file
/home/vagrant/bin/wp core config --dbname=homestead --dbuser=homestead --dbpass=secret --extra-php <<PHP
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );
PHP
#install wp
/home/vagrant/bin/wp core install --url=wordpress.app --title=WordPress --admin_user=homestead --admin_password=secret --admin_email=admin@wordpress.app
#symlink theme to themes directory