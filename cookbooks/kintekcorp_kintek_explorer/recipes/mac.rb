#
# Cookbook Name:: kintekcorp_kintek_explorer
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app
dmg_package "KinTek Explorer" do
  app "KinTek_Explorer"
  volumes_dir "KinTek_Explorer"
  dmg_name "kintek_explorer-student-4.0.131124"
  source "http://ims-chef.wesleyan.edu/os_x/kintekcorp_kintek_explorer/kintek_explorer-student-4.0.11242013.dmg"
  checksum "2b7cf661e8a8ff9dcc5110735e95b895cd4c9c34aea3939676c34b992c5ecae0"
  action :install
  type "dir"
  package_id "com.kintek-corp.kintek.explorer"
  version "4.0.131124"
end

# Add to dock
dock_add "/Applications/KinTek_Explorer/KinTek_Explorer.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end