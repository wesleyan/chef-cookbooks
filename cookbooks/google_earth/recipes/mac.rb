#
# Cookbook Name:: google_earth
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "GoogleEarthMac-Intel-7.0.1.dmg" do
  app "Google Earth"
  volumes_dir "Google Earth"
  dmg_name "GoogleEarthMac-Intel-7.0.1.dmg"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/google_earth-7/GoogleEarthMac-Intel-7.0.1.dmg"
  checksum "6220fb17559f8ba8666908e5124812a16ac249f0163efd3c724e59bdf2788b31"
  action :install
  unmount false
  type "app"
end

# Install web plugin
dmg_package "GoogleEarthMac-Intel-7.0.1.dmg" do
  app "Google Earth Web Plug-in"
  volumes_dir "Google Earth"
  dmg_name "GoogleEarthMac-Intel-7.0.1.dmg"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/google_earth-7/GoogleEarthMac-Intel-7.0.1.dmg"
  checksum "6220fb17559f8ba8666908e5124812a16ac249f0163efd3c724e59bdf2788b31"
  action :install
  destination "/Library/Internet Plug-Ins/"
  type "dir"
  unmount true
#  already_mounted true
end

cookbook_file "/tmp/com.google.GoogleEarthPlus.plist" 

preference_copy "/tmp/com.google.GoogleEarthPlus.plist" do
  convert_to_binary true
  all_users true
end
