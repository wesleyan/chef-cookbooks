#
# Cookbook Name:: compressor
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "compressor-4.0.6.dmg" do
  app "Compressor"
  volumes_dir "Compressor"
  dmg_name "compressor-4.0.6.dmg"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_compressor/compressor-4.0.6.dmg"
  checksum "ed378c9a50e90b43cc3e5dd494a9cc12f48f26d99fe3d7fe6141547e1358016b"
  action :install
  type "app"
end