#
# Cookbook Name:: aftereffects
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "adobe_after_effects_cs6-11.0.2.dmg" do
  app "adobe_after_effects_cs6-11.0.2_Install"
  volumes_dir "adobe_after_effects_cs6-11.0.2"
  dmg_name "adobe_after_effects_cs6-11.0.2"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_after_effectsa_cs6/adobe_after_effects_cs6-11.0.2.dmg.dmg"
  checksum "0d34b54b39689f35d0569bd298e6bddaa61ac32cf58bbabc44246d9465b966c9"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.E771578B-4201-48DD-A429-742EF35760F6"
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
