#
# Cookbook Name:: videon_vlc
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "vlc-2.0.5" do
  app "VLC"
  volumes_dir "vlc-2.0.5"
  dmg_name "vlc-2.0.5"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/videolan_vlc/vlc-2.0.5.dmg"
  checksum "64257a95902314248128e52b2d90e13e0475e57ad3661000ab2226c23a7395bf"
  package_id "com.videolan.vlc"
  version "2.0.5"
  action :install
  type "app"
end

# Add to dock
dock_add "/Applications/VLC.app" do
  all_users true
#  restart true  
end

launch_association_set_file_handler "public.movie" do
  bundle_id "org.videolan.vlc"
  all_users true
end
