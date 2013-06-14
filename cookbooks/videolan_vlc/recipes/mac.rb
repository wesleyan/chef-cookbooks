#
# Cookbook Name:: videon_vlc
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "vlc-2.0.7" do
  app "VLC"
  volumes_dir "vlc-2.0.7"
  dmg_name "vlc-2.0.7"
  source "http://ims-chef.wesleyan.edu/os_x/videolan_vlc/vlc-2.0.7.dmg"
  checksum "53b5b4786c435e0dd06597139a767cf140f0ef2b54676c8eb5ae62e0f31b3497"
  package_id "com.videolan.vlc"
  version "2.0.7"
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
