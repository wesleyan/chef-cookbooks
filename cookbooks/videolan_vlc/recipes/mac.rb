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
  volumes_dir "vlc-2.0.8"
  dmg_name "vlc-2.0.8-intel64"
  source "http://ims-chef.wesleyan.edu/os_x/videolan_vlc/vlc-2.0.8-intel64.dmg"
  checksum "6f9a8a6a5dbb54a86ea7d70c748b9157ad4707bc58204cc049331dede2eea6ea"
  package_id "com.videolan.vlc"
  version "2.0.8"
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
