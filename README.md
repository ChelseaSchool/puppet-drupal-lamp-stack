# LAMP Stack Environment for MyIEP Development

## Shout outs!

Credit must be given where credit is due. Most of this work was made possible by:

* [PerishableDave/puppet-lamp-stack](https://github.com/PerishableDave/puppet-lamp-stack).

* [jas0nkim/my-vagrant-puppet-lamp](https://github.com/jas0nkim/my-vagrant-puppet-lamp).

## Prerequisites

* [Vagrant](http://www.vagrantup.com/)

* [Virtual Box](https://www.virtualbox.org/)

## Instructions


1. Ensure Vagrant and Virutal Box are installed.

2. Install precise32 Vagrant box. (If not installed already)

	$ vagrant box add precise32 http://files.vagrantup.com/precise32.box

3. Clone this repository.

4. The directory "drupal" in the root directory of the clone will act as your root web folder.

5. Open up terminal, change directory to this git repo root, and start the vagrant box.

	`$ vagrant up`

6. You're all set up. The webserver will now be accessible from [http://localhost:8888](http://localhost:8888)


## Included in the Stack

* apache2 - rewrite mode enabled, having virtual host with config - refer manifest/vagrant_webroot.sample
* php5
* php5-cli
* php5-mysql
* php-pear - installed packages: phpunit and its dependencies
* php5-dev
* php5-gd
* php5-mcrypt
* libapache2-mod-php5
* mysql-server
* curl
* vim
* htop
* phpmyadmin
* drush
* git
