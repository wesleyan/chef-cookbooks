#
# Cookbook Name:: videon_vlc
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "VideoLAN VLC" do
  app "VLC"
  volumes_dir "vlc-2.1.0"
  dmg_name "vlc-2.1.0"
  source "http://ims-chef.wesleyan.edu/os_x/videolan_vlc/vlc-2.1.0.dmg"
  checksum "0f837df3fa6f86e3253dfba8e49e15d29fdc4e769853cbe0aeb28a97ad9ba2b2"
  package_id "com.videolan.vlc"
  version "2.1.0"
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
