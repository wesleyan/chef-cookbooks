#
# Cookbook Name:: adobe_after_effects_cs6
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Adobe After Effects CS6" do
  app "adobe_after_effects_cs6_Install"
  volumes_dir "adobe_after_effects_cs6"
  dmg_name "adobe_after_effects_cs6-11.0.2"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_after_effects_cs6/adobe_after_effects_cs6-11.0.2.dmg"
  checksum "d2e517e4e4c06eb3a9571c38d6057a9847874e382da4e6b3a722ff6bcd04264c"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.BA86957C-D9C2-41EB-94AB-D30411071D7B"
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
dock_add "/Applications/Adobe After Effects CS6/Adobe After Effects CS6.app" do
  all_users true
  group "Adobe Creative Suite 6"
#  restart true
end
