#
# Cookbook Name:: chef
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Updates chef in chef, from the installer on baratheon

chef_gem "mixlib-versioning"

remote_file "/tmp/chef.sh" do
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/opscode_chef/chef.sh"
  mode 0777
end

opscode_chef_update "Updating version" do
  version "11.4.2"
end
