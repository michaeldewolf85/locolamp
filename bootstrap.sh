#!/bin/bash

# Provision locolamp.

# We set DEBIAN_FRONTEND to noninteractive in order to bypass all prompts that
# require user input.
export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y apache2 mysql-server php5 libapache2-mod-php5 php5-mysql

mysql -uroot -e "CREATE DATABASE locolamp"
rm -rf /var/www/html
ln -s /vagrant/${1} /var/www/html
