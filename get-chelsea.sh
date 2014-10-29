#/bin/bash -ex
sshpass -p "vagrant" rsync -rzvp vagrant@lounge.chelseaschool.edu:"/home/vagrant/modules/" /vagrant/drupal/modules/
sshpass -p "vagrant" rsync -rzvp vagrant@lounge.chelseaschool.edu:"/home/vagrant/sites/" /vagrant/drupal/sites/
sshpass -p "vagrant" rsync -rzvp vagrant@lounge.chelseaschool.edu:"/home/vagrant/themes/" /vagrant/drupal/themes/
sshpass -p "vagrant" rsync -rzvp vagrant@lounge.chelseaschool.edu:"/home/vagrant/ChelseaSchoolHyattsvilleMD-2014-10-28T12-44-45.mysql" /vagrant/
mysql -u root -proot -h localhost drupal < /vagrant/ChelseaSchoolHyattsvilleMD-2014-10-28T12-44-45.mysql
cd /vagrant/drupal && drush -y upwd admin --password="admin"
