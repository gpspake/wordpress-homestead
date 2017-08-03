# WordPress Homestead

Local WordPress development with [Homestead](https://github.com/laravel/homestead)

## Getting Started

### Clone this repository

````bash
git clone git@github.com:gpspake/wordpress-homestead.git
cd wordpress-homestead
````

### Install homestead with composer
````bash
composer install
````


### Add wordpress.app to your hosts file

````bash
192.168.10.10 wordpress.app
````

### Run vagrant up

````bash
vagrant up
````
### Access WordPress

Go to `wordpress.app` in a browser

The username and password for wp-admin and the database is `homestead / secret`.

### SSH access
````bash
vagrant ssh
````

### WP-CLI

Use [WP-CLI](http://wp-cli.org/) to manage WordPress in homestead
````bash
cd ~/Code/wordpress
wp
````

### Symlinking Project Files

Use symlinks to work on plugins and themes from your project directory
````bash
cd ~/Code
mkdir my-plugin
ln -s ~/Code/my-plugin ~/Code/wordpress/wp-content/plugins/my-plugin
````