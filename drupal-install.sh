#!/bin/bash -ex

#######
# Use Drush to setup drupal at /vagrant/drupal - shared with host.
# Use Drush to setup database for Drupal - called Drupal - credentials root/root
#######

cd /vagrant && sudo drush dl drupal --drupal-project-rename=drupal

cd /vagrant/drupal/ && sudo drush site-install standard --db-url=mysql://root:root@localhost/drupal
