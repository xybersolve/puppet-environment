#!/bin/bash

# get repositiory for Puppet Enterprise Collection1
sudo yum install -y http://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm

# update repo cache
sudo yum check-update
# sudo yum makecache 

# display the repositories
sudo yum repolist

# install the Puppet Agent
sudo yum -y install puppet-agent

# install other packages
sudo yum install -y git nano
#sudo service ntpd start
#$sudo chkconfig ntpd on

#sudo yum -y install nano git ntp
#sudo service ntpd start
#sudo chkconfig ntpd on

#sudo yum -y install http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
#sudo yum -y install puppet-server

#puppet master --version



