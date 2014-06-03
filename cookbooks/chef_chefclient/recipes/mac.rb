#
# Cookbook Name:: chef
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Update our chef package
dmg_package "Chef Client" do
  app "chef"
  volumes_dir "chef"
  dmg_name "chef-11.12.4-1"
  source "http://ims-chef.wesleyan.edu/os_x/chef_chefclient/chef-11.12.4-1.dmg"
  checksum "eaaf2a684328d8054bbf84080952d312bbbc34f143df142162b005daf191ff03"
  action :install
  type "pkg"
  package_id "com.getchef.pkg.chef"
end