$drupal= <<EOF
cd /vagrant && drush -y dl drupal --drupal-project-rename=drupal
cd /vagrant/drupal/ && drush -y site-install standard --db-url=mysql://root:root@localhost/drupal
cd /vagrant/drupal && drush -y upwd admin --password="admin"
EOF

Vagrant.configure("2") do |config|

  # Enable the Puppet provisioner, with will look in manifests
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "modules"
 end

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "hashicorp/precise32"

  # Forward guest port 80 to host port 8888 and name mapping
  config.vm.network :forwarded_port, guest: 80, host: 8888

  # config.vm.synced_folder "drupal/", "/vagrant/drupal/", :owner => "www-data", :group => "vagrant"
   config.vm.synced_folder "./", "/vagrant", :owner => "vagrant", :group => "www-data", mount_options: ["dmode=775,fmode=664"]
   config.vm.provision "shell",
    inline: $drupal
 end

