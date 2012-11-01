#
# Cookbook Name:: illustrator
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "adobe_illustrator_cs6-16.0.1_Install.dmg" do
  app "adobe_illustrator_cs6-16.0.1_Install"
  volumes_dir "adobe_illustrator_cs6-16.0.1_Install"
  dmg_name "adobe_illustrator_cs6-16.0.1_Install"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/adobe_illustrator-cs6/adobe_illustrator_cs6-16.0.1_Install.dmg"
  checksum "2fc08a07a464756a7f357168324da278d0413485fd670ab6f3919eab75eb11cf"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.FFE0F483-5EAA-47AF-973F-11F83DD15D1B"
end

# Create dock folder
dock_add "Adobe Creative Suite 6" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/Adobe Illustrator CS6/Adobe Illustrator.app" do
  all_users true
  group "Adobe Creative Suite 6"
  restart true
end
