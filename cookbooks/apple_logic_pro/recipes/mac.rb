#
# Cookbook Name:: apple_logic_pro
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base Logic package, .app captured from Mac App Store
dmg_package "Logic Pro" do
  app "Apple Logic Pro"
  volumes_dir "Logic Pro X"
  dmg_name "apple_logic_pro-10.0.6"
  source "http://ims-chef.wesleyan.edu/os_x/apple_logic_pro/logic_pro_x-10.0.6.dmg"
  checksum "b1294bc84ff004bff9f41f267d73f74faf2c825260b027720dca0a13f93c16af"
  action :install
  type "app"
  package_id "com.apple.pkg.LogicProX"
  version "10.0.6"
end

# Install core content, required for app launch.
dmg_package "Logic Pro Core Content" do
  app "ProAudioCoreContent10"
  volumes_dir "ProAudioCoreContent10"
  dmg_name "ProAudioCoreContent10"
  source "http://ims-chef.wesleyan.edu/os_x/apple_logic_pro/ProAudioCoreContent10.dmg"
  checksum "062d56efcea5accd4d18b3f5847d05fe0fa00c820242f7779fb90febf4f7ba70"
  action :install
  type "pkg"
  package_id "com.apple.pkg.ProAudioCoreContent10"
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
dock_add "/Applications/Logic Pro X.app" do
  all_users true
  group "Center for the Arts"
end