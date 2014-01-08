#
# Cookbook Name:: apple_final_cut_pro
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install FCP
dmg_package "Final Cut Pro X" do
  app "Final Cut Pro"
  volumes_dir "Final Cut Pro"
  dmg_name "final_cut_pro-10.1"
  source "http://ims-chef.wesleyan.edu/os_x/apple_final_cut_pro/final_cut_pro-10.1.dmg"
  checksum "c6ed8b1fc7505628cd1f1dc3e82aa24703428e06608355fa678dd3e66cebf440"
  action :install
  type "app"
  package_id "com.apple.FinalCut"
  version "10.1.0"
end

# Install Supplemental content
dmg_package "Final Cut Pro Supplemental Content" do
  app "FCPContent"
  volumes_dir "FCPContent"
  dmg_name "FCPContent-1.0"
  source "http://ims-chef.wesleyan.edu/os_x/apple_final_cut_pro/FCPContent-1.0.dmg"
  checksum "a68df0eafac96d2a6ae52fe7b08fb587e6c7216afe64c05210fcec01a0eb78a5"
  action :install
  type "pkg"
  package_id "com.apple.pkg.FCPContent"
end

# Install QT Codecs
dmg_package "QuickTime Pro Codecs" do
  app "ProAppsQTCodecs"
  volumes_dir "ProAppsQTCodecs 1.0.2"
  dmg_name "ProAppsQTCodecs1.0.2.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/apple_final_cut_pro/ProAppsQTCodecs1.0.2.dmg"
  checksum "76f88ebba783c3679942b666182d5784e7962a66ef1f5aae99aa5e58c99f1a55"
  action :install
  type "pkg"
  package_id "com.apple.pkg.ProAppsQTCodecs"
  version "1.0.2"
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
dock_add "/Applications/Final Cut Pro.app" do
  all_users true
  group "Center for the Arts"
end