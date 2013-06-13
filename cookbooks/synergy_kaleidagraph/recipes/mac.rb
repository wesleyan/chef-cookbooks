#
# Cookbook Name:: synergy_kaleidagraph
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Synergy KaleidaGraph" do
  app "KaleidaGraph"
  volumes_dir "KaleidaGraph"
  dmg_name "kaleidagraph-4.1.3"
  source "http://ims-chef.wesleyan.edu/os_x/synergy_kaleidagraph/kaleidagraph-4.1.3.dmg"
  checksum "e501994fc852bb04d505e52fd173d12950f200d94f33f0a78fbd91f841b3fb02"
  action :install
  type "pkg"
  package_id "com.synergy.kaleidagraph"
  version "4.1.3"
end

# Create dock folder, if it does not exist
dock_add "Natural Sciences and Mathematics" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/KaleidaGraph 4.1/KaleidaGraph.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
