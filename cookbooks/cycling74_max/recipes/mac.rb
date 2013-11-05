#
# Cookbook Name:: cycling74_max
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Cycling74 Max" do
  app "Max 6.1 Installer"
  volumes_dir "Max61_130620_69b6394_keyserver"	
  dmg_name "Max613_69b6394_keyserver"
  source "http://ims-chef.wesleyan.edu/os_x/cycling74_max/Max613_69b6394_keyserver.dmg "
  checksum "d5fbcda041c5774da710b297ab936ab1f76458d3002e712e3ca73822d7c39e0f"
  action :install
  type "pkg"
  package_id "com.cycling74.Max61.pkg"
  version "6.1.3"
end

# Create dock folder, if it does not exist
dock_add "Center for the Arts" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add to dock
dock_add "/Applications/Max 6.1/Max.app" do
  all_users true
  group "Center for the Arts"
end