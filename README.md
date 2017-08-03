# WordPress Homestead

Local WordPress development with Homestead

## Getting Started

Clone this repository

````bash
git clone git@github.com:gpspake/wordpress-homestead.git
cd wordpress-homestead
````

Install homestead with composer
````bash
composer install
````


Add wordpress.app to your hosts file

````bash
192.168.10.10 wordpress.app
````

Run vagrant up

````bash
vagrant up
````

Go to `wordpress.app` in a browser

The username and password for wp-admin and the wordpress database is `homestead / secret`.
