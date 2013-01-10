#
# Cookbook Name:: adobe_premiere_pro_cs6
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "adobe_premiere_pro_cs6-6.0.2.dmg" do
  app "adobe_premiere_pro_cs6-6.0.2_Install"
  volumes_dir "adobe_premiere_pro_cs6-6.0.2"
  dmg_name "adobe_premiere_pro_cs6-6.0.2"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_premiere_pro_cs6/adobe_premiere_pro_cs6-6.0.2.dmg"
  checksum "c3928ea2b67c04420730d84592bdb14e293baeb876eaf8d38f5df8e96134f7f2"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.A39ED404-FAD0-4310-8DC6-C00539826372"
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
dock_add "/Applications/Adobe Premiere Pro CS6/Adobe Premiere Pro CS6.app" do
  all_users true
  group "Adobe Creative Suite 6"
#  restart true
end
