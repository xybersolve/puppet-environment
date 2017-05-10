#!/bin/bash

# get the Puppet Collection 1 repository
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb

# install it
sudo dpkg -i puppetlabs-release-pc1-trusty.deb

# update all other repos
sudo apt-get update	

# install the All In One (AIO) Puppet Agent
sudo apt-get -y install puppet-agent

#puppet master --version

# check for existing modules
# $ sudo puppet module list

# make puppet sudo enabled
sudo sed -i -e 's#\(secure_path = .*\)$#\1:/opt/puppetlabs/bin#' /etc/sudoers

# install the vim syntax formatting module
sudo puppet module install theurbanpenguin/puppet_vim  # -i /etc/puppetlabs/code/modules
# apply this installed module
sudo puppet apply -e “include puppet_vim“

# install the puppetlavs standard library
sudo puppet module install puppetlabs/stdlib # -i /etc/puppetlabs/code/modules

# check modules - installed modules should be there
sudo puppet module list

# install git, nano 
sudo apt-get -y install git nano 
