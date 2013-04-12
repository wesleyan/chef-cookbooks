#
# Cookbook Name:: videon_vlc
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "vlc-2.0.6" do
  app "VLC"
  volumes_dir "vlc-2.0.6"
  dmg_name "vlc-2.0.6"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/videolan_vlc/vlc-2.0.6.dmg"
  checksum "d6c0ee540cdb60df8976443931815ee3a502a5a01cd0df00f9e4536a0e3a32d6"
  package_id "com.videolan.vlc"
  version "2.0.6"
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
