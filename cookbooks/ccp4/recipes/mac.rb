#
# Cookbook Name:: ccp4
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install CCP4
dmg_package "CCP4 and Coot" do
  app "ccp4-6.4.0"
  volumes_dir "ccp4-6.4.0"
  dmg_name "ccp4-6.4.0.2"
  source "http://sw.wesleyan.edu/os_x/ccp4/ccp4-6.4.0.2.dmg"
  checksum "ae813c980b782d7e3c6165ef5d3ea3e621be271dd2b7f344c4f0a99d83ad208c"
  action :install
  type "mpkg"
  package_id "ccp4.ac.uk.ccp4640.ccp4.app.pkg"
end

# Create dock folder, if it does not exist
dock_add "Natural Sciences and Mathematics" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add ccp4 icon to dock
dock_add "/Applications/ccp4-6.4.0/ccp4.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end

# Add coot icon to dock
dock_add "/Applications/ccp4-6.4.0/coot.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end