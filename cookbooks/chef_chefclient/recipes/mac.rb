#
# Cookbook Name:: chef
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Include gem for versioning
chef_gem "mixlib-versioning"

# Get chef install script from our server
remote_file "/tmp/chef.sh" do
  source "http://ims-chef.wesleyan.edu/os_x/chef_chefclient/chef-11.10.0_1.mac_os_x.10.7.2.sh"
  mode 0777
end

# Run shell script to update chef-client
chef_chefclient_update "Updating version" do
  version "11.10.0"
end
