#
# Cookbook Name:: apple_final_cut_pro
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install FCP
dmg_package "Final Cut Pro X" do
  app "Final Cut Pro"
  volumes_dir "Final Cut Pro"
  dmg_name "final_cut_pro-10.1.1"
  source "http://sw.wesleyan.edu/os_x/apple_final_cut_pro/final_cut_pro-10.1.1.dmg"
  checksum "3f54af9ff155c4eebda766ea8d165438096626c3e08db2024ced85b8a10ecff7"
  action :install
  type "pkg"
  package_id "com.apple.pkg.FinalCut_AppStore"
  version "10.1.1"
end

# Install Supplemental content
dmg_package "Final Cut Pro Supplemental Content" do
  app "FCPContent"
  volumes_dir "FCPContent"
  dmg_name "FCPContent-1.0"
  source "http://sw.wesleyan.edu/os_x/apple_final_cut_pro/FCPContent-1.0.dmg"
  checksum "a68df0eafac96d2a6ae52fe7b08fb587e6c7216afe64c05210fcec01a0eb78a5"
  action :install
  type "pkg"
  package_id "com.apple.pkg.FCPContent"
end

# Install QT Codecs
dmg_package "QuickTime Pro Codecs" do
  app "ProAppsQTCodecs"
  volumes_dir "ProAppsQTCodecs 1.0.4"
  dmg_name "ProAppsQTCodecs1.0.4.dmg"
  source "http://sw.wesleyan.edu/os_x/apple_final_cut_pro/ProAppsQTCodecs1.0.4.dmg"
  checksum "69a69c0589b133e7195a5ad9eb8e011728cf53d5bff91e8e6a5c1dc97bdb9887"
  action :install
  type "pkg"
  package_id "com.apple.pkg.ProAppsQTCodecs"
  version "1.0.4"
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