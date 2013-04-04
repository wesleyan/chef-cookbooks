#
# Cookbook Name:: compressor
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "compressor-4.0.7.dmg" do
  app "Compressor"
  volumes_dir "Compressor"
  dmg_name "compressor-4.0.7.dmg"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_compressor/compressor-4.0.7.dmg"
  checksum "a8dd66ebc3210a7b9c541ea87292c920a416cb4796660346f7755b726d97daf6"
  action :install
  type "app"
end