#
# Cookbook Name:: vlc
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "vlc-2.0.3" do
  app "VLC"
  volumes_dir "vlc-2.0.3"
  dmg_name "vlc-2.0.3"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/vlc-2/vlc-2.0.3.dmg"
  checksum "d0ee6c536835c837c1043dde585fe9f36aa36661fe24b3e0662bcc468f9cf143"
  action :install
  type "app"
end
