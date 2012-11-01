#
# Cookbook Name:: compressor
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "compressor-4.0.5.dmg" do
  app "Compressor"
  volumes_dir "Compressor"
  dmg_name "compressor-4.0.5.dmg"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_compressor-4/compressor-4.0.5.dmg"
  checksum "bd03e8cd2cf1751a68cfaf3b6b1e4b0855f37a7ba714614d28bcf2a9afafb3c7"
  action :install
  type "app"
end