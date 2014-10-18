#!/bin/bash -ex

#######
# Use Drush to setup drupal at /vagrant/drupal - shared with host.
# Use Drush to setup database for Drupal - called Drupal - credentials root/root
# Set Password for admin to admin with drush
#######

cd /vagrant && sudo drush dl drupal --drupal-project-rename=drupal

cd /vagrant/drupal/ && sudo drush site-install standard --db-url=mysql://root:root@localhost/drupal

cd /vagrant/drupal && sudo drush upwd admin --password="admin"
