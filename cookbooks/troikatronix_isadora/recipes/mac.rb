#
# Cookbook Name:: google_earth
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package  
dmg_package "GoogleEarthMacNoUpdate-Intel.dmg" do
  app "Google Earth"
  volumes_dir "Google Earth"
  dmg_name "GoogleEarthMacNoUpdate-Intel"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/google_earth-7/GoogleEarthMacNoUpdate-Intel.dmg"
  checksum "26aa1b702d4d54252bab17515b76da749038a19ea51475e80c7d22aabc2031b0"
  action :install
  unmount false
  type "app"
end

# Install web plugin
dmg_package "GoogleEarthMacNoUpdate-Intel.dmg" do
  app "Google Earth Web Plug-in"
  volumes_dir "Google Earth"
  dmg_name "GoogleEarthMacNoUpdate-Intel"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/google_earth-7/GoogleEarthMacNoUpdate-Intel.dmg"
  checksum "26aa1b702d4d54252bab17515b76da749038a19ea51475e80c7d22aabc2031b0"
  action :install
  destination "/Library/Internet Plug-ins/"
  type "dir"
  already_mounted true
end
