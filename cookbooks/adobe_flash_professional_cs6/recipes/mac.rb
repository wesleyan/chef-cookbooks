#
# Cookbook Name:: flashpro
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "Adobe Flash Professional CS6" do
  app "adobe_flash_professional_cs6_Install"
  volumes_dir "adobe_flash_professional_cs6"
  dmg_name "adobe_flash_professional_cs6-12.0.2"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_flash_professional_cs6/adobe_flash_professional_cs6-12.0.2.dmg"
  checksum "2c7b5b50600ec529c4d6e2389e47349c14b9ccfd0907f2c675a75f89bd3f7349"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.BD17182E-2190-476D-BDAC-6E10AE8D75B3"
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
dock_add "/Applications/Adobe Flash CS6/Adobe Flash CS6.app" do
  all_users true
  group "Adobe Creative Suite 6"
  restart true
end
