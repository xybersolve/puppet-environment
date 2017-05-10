# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.hostmanager.enabled = true
  config.hostmanager.ignore_private_ips = false
  config.hostmanager.include_offline = true

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/trusty64"
    ubuntu.vm.hostname = "ubuntu"
    ubuntu.vm.network "private_network", ip: "192.168.56.16"
    ubuntu.vm.network "forwarded_port", guest:80, host:80
    ubuntu.hostmanager.aliases = %w(ubuntu)
   # ubuntu.vm.network "public_network", use_dhcp_assigned_default_route: true
   # ubuntu.vm.network "public_network", ip: "192.169.1.89" 
    ubuntu.vm.provision "shell", path: "provision/ubuntu.sh"   
    
    # general home directory share 
    ubuntu.vm.synced_folder "./files/shared/", 
      "/home/vagrant", 
      owner: "vagrant", group: "vagrant"
    
    # puppet custom modules share to production environment
    ubuntu.vm.synced_folder "./files/shared/puppet/modules/", 
      "/etc/puppetlabs/code/environments/production/modules",
      owner: "root", group: "root" 

    # SSH configuration
    # ubuntu.ssh.username = 'greg'
    # ubuntu.ssh.password = 'vagrant'
    # ubuntu.ssh.insert_key = 'true'  
  end
  
  config.vm.define "centos" do |centos|
    centos.vm.box = "puppetlabs/centos-7.2-64-nocm" 
    centos.vm.hostname = "centos"
    centos.vm.network "private_network", ip: "192.168.56.15"
    centos.hostmanager.aliases = %w{centos)}
    # centos.vm.network "public_network", ip: "192.168.1.90"
    centos.vm.provision "shell", path: "provision/centos.sh" 
    # centos.vm.synced_folder  "files/centos", "/home/vagrant"
    # centos.vm.network "forwarded_port", guest 80, host: 8181
    # centos.ssh.username = 'root'
    # centos.ssh.password = 'vagrant'
    # centos.ssh.insert_key = 'true' 	
  end

  config.vm.define "puppet" do |puppet|
    puppet.vm.box = "puppetlabs/centos-7.2-64-nocm"
    puppet.vm.hostname = "puppet"
    puppet.vm.synced_folder  "files/centos", "/home/vagrant" 
    puppet.vm.network "private_network", ip: "192.168.56.1"
    puppet.hostmanager.aliases = %w(puppet) 
    puppet.vm.provision "shell", path: "provision/centos.sh"
  end

end
