# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest
  config.vm.hostname = "base.my.dev"
  config.vm.box = "CentOS 7.2"
  config.vm.box_url = 'http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-7.2_chef-provisionerless.box'

  config.vm.provider "virtualbox" do |v, override|
    v.name = "MY BASE"
    v.customize ["modifyvm", :id, "--cpus", 1]
    v.customize ["modifyvm", :id, "--memory", 4096]
  end

  #config.vm.network :private_network, ip: "192.168.42.42"
  config.vm.network :forwarded_port, guest: 80, host: 9876

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      'recipe[my-base]',
    ]
  end
end
