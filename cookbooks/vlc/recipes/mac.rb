#
# Cookbook Name:: vlc
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "vlc-2.0.4" do
  app "VLC"
  volumes_dir "vlc-2.0.4"
  dmg_name "vlc-2.0.4"
  dock_category "Multimedia"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/vlc-2/vlc-2.0.4.dmg"
  checksum "d3770f25632aee8224ac17be383872ae05f684d69ee0f4c7e9d2b30778a8bfb5"
  action :install
  type "app"
end

# Add to dock
dock_add "/Applications/VLC.app" do
  all_users true
  restart true  
end