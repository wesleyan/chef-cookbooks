#
# Cookbook Name:: uiuc_vmd
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app
dmg_package "VMD" do
  app "VMD 1.9.1"
  volumes_dir "VMD-1.9.1"
  dmg_name "vmd191macx86"
  source "http://ims-chef.wesleyan.edu/os_x/uiuc_vmd/vmd191macx86.dmg"
  checksum "a068e438a5f5fcdc0c97446b6dde8c046382e281badc31c9045e87d7dd166176"
  action :install
  type "app"
  package_id "edu.uiuc.ks.vmd"
  version "1.9.1"
end

# Create dock folder, if it does not exist
dock_add "Natural Sciences and Mathematics" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/VMD 1.9.1.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
