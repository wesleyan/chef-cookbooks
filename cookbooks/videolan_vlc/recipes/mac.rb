#
# Cookbook Name:: videon_vlc
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "VideoLAN VLC" do
  app "VLC"
  volumes_dir "vlc-2.1.2"
  dmg_name "vlc-2.1.2"
  source "http://ims-chef.wesleyan.edu/os_x/videolan_vlc/vlc-2.1.2.dmg"
  checksum "e6d745adfc22c8ad380d859e4e9efc5a7dac806939bed8147ac48331a891b618"
  package_id "com.videolan.vlc"
  version "2.1.2"
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
