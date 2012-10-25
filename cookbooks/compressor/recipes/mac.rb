#
# Cookbook Name:: compressor
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "compressor-4.0.4.dmg" do
  app "Compressor"
  volumes_dir "Compressor"
  dmg_name "compressor-4.0.4.dmg"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_compressor-4/compressor-4.0.4.dmg"
  checksum "aaecab92bd10977a72f219ab8b8ca54046702f7e0abc52f9ee9e32743a942516"
  action :install
  type "app"
end