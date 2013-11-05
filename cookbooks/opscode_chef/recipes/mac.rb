#
# Cookbook Name:: chef
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Include gem for versioning
chef_gem "mixlib-versioning"

# Get chef install script from our server
remote_file "/tmp/chef.sh" do
  source "http://ims-chef.wesleyan.edu/os_x/opscode_chef/chef-11.8.0_1.mac_os_x.10.7.2.sh"
  mode 0777
end

# Run shell script to update chef-client
opscode_chef_update "Updating version" do
  version "11.8.0"
end
