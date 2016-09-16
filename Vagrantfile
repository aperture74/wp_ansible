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
      ansible_config.vm.synced_folder "~/Personal/infra/devops/", "/home/vagrant"
      ansible_config.vm.provider "virtualbox" do |vb|
        vb.name = "ansible"
        vb.memory = "512"
      end
      ansible_config.vm.provision :shell, path: "bootstrap-ansible.sh"
  end

  # create app node

  config.vm.define :appl do |appl_config|
      appl_config.vm.box = "centos/7"
      appl_config.vm.hostname = "appl"
      appl_config.vm.network :private_network, ip: "10.0.15.11"
      appl_config.vm.provider "virtualbox" do |vb|
        vb.name = "appl"
        vb.memory = "1024"
      end
  end

  # create OpenNebula frontend

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
