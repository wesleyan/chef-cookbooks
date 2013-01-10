#
# Cookbook Name:: dreamweaver
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "adobe_dreamweaver_cs6-12.0.3.dmg" do
  app "adobe_dreamweaver_cs6_Install"
  volumes_dir "adobe_dreamweaver_cs6-12.0.3"
  dmg_name "adobe_dreamweaver_cs6-12.0.3"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_dreamweaver_cs6/adobe_dreamweaver_cs6-12.0.3.dmg"
  checksum "0d8cd1b0f164fce1728306281a0c1825533e1abb7212736c4613a90f5b4e9afd"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.F0E755A7-73FC-42E6-8ECA-22A3FD95E008"
end

# Download icon
cookbook_file "/tmp/adobe.png"

# Create dock folder, if it does not exist
dock_add "Adobe Creative Suite 6" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
  icon "/tmp/adobe.png"
end

# Add icon to dock
dock_add "/Applications/Adobe Dreamweaver CS6/Adobe Dreamweaver CS6.app" do
  all_users true
  group "Adobe Creative Suite 6"
# restart true
end
