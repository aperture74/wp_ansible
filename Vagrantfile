# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # create ansible node

  config.vm.define :ansible do |ansible_config|
      ansible_config.vm.box = "ubuntu/xenial64"
      ansible_config.vm.hostname = "ansible"
      ansible_config.vm.network :private_network, ip: "10.0.15.10"
      ansible_config.vm.synced_folder "PATH_TO_ANSIBLE_PLAYBOOK", "/home/vagrant"
      ansible_config.vm.provider "virtualbox" do |vb|
        vb.name = "ansible"
        vb.memory = "512"
      end
      ansible_config.vm.provision :shell, path: "bootstrap-ansible.sh"
  end

  # create app node

  config.vm.define :app do |app_config|
      app_config.vm.box = "centos/7"
      app_config.vm.hostname = "app"
      app_config.vm.network :private_network, ip: "10.0.15.11"
      app_config.vm.provider "virtualbox" do |vb|
        vb.name = "app"
        vb.memory = "1024"
      end
  end

  # create db node

    config.vm.define :db do |db_config|
      db_config.vm.box = "centos/7"
      db_config.vm.hostname = "db"
      db_config.vm.network :private_network, ip: "10.0.15.12"
      db_config.vm.provider "virtualbox" do |vb|
        vb.name = "db"
        vb.memory = "1024"
      end

  end
 end
