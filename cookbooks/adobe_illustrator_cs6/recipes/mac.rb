#
# Cookbook Name:: adobe_illustrator_cs6
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "adobe_illustrator_cs6-16.0.3.dmg" do
  app "adobe_illustrator_cs6_Install"
  volumes_dir "adobe_illustrator_cs6-16.0.3"
  dmg_name "adobe_illustrator_cs6-16.0.3"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_illustrator_cs6/adobe_illustrator_cs6-16.0.3.dmg"
  checksum "f4fa63d987582f0d5cd690da377a887def19272b826ceee18ea190d3606c4ef4"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.93E2A28A-EA2B-44A2-8D93-B5816DAAC142"
end

# Download icon
cookbook_file "/tmp/adobe.png"

# Create dock folder
dock_add "Adobe Creative Suite 6" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
  icon "/tmp/adobe.png"
end

# Add icon to dock
dock_add "/Applications/Adobe Illustrator CS6/Adobe Illustrator.app" do
  all_users true
  group "Adobe Creative Suite 6"
#  restart true
end
