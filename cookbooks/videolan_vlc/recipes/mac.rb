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
  volumes_dir "VLC"
  dmg_name "vlc-2.1.4"
  source "http://ims-chef.wesleyan.edu/os_x/videolan_vlc/vlc-2.1.4.dmg"
  checksum "88a296fe89b95789d7780ec7556c6713bf0351a55d1705e523183e492e4c633c"
  action :install
  type "pkg"
  package_id "org.videolan.vlc.pkg"
  version "2.1.4"
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
