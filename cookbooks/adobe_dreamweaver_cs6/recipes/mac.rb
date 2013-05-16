#
# Cookbook Name:: dreamweaver
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "Adobe Dreamweaver CS6" do
  app "adobe_dreamweaver_cs6_Install"
  volumes_dir "adobe_dreamweaver_cs6"
  dmg_name "adobe_dreamweaver_cs6-12.0.3"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_dreamweaver_cs6/adobe_dreamweaver_cs6-12.0.3.dmg"
  checksum "175756cff42c4b08e3b8839c2e06b7f6504f1dc1c7fb548617894265b786ccca"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.4EB82BB8-81B3-41AB-9FF2-831373B42DFC"
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
