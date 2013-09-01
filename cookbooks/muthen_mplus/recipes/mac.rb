#
# Cookbook Name:: muthen_mplus
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Muthen Mplus" do
  app "Mplus"
  volumes_dir "Mplus"
  dmg_name "mplus-7.11"
  source "http://ims-chef.wesleyan.edu/os_x/muthen_mplus/mplus-7.11.dmg"
  checksum "68a54a06776c3e3d9fc00924ad082edb5b34966946bfb60ed33d48a70fccc570"
  action :install
  type "dir"
  package_id "com.statmodel.muthen.mplus"
  version "7.1.1"
end

# Create dock folder, if it does not exist
dock_add "Social Sciences" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/Mplus/Mplus Editor.app" do
  all_users true
  group "Social Sciences"
end

