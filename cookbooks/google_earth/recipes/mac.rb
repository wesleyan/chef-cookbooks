#
# Cookbook Name:: google_earth
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "GoogleEarthMac-Intel-7.0.2.8415.dmg" do
  app "Google Earth"
  volumes_dir "Google Earth"
  dmg_name "GoogleEarthMac-Intel-7.0.2.8415"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/google_earth/GoogleEarthMac-Intel-7.0.2.8415.dmg"
  checksum "228fb458ac569bc51884528d2cbdabde5df9f7c57fbe2d1d6661529a6132b67f"
  action :install
  unmount false
  type "app"
end

# Install web plugin
dmg_package "GoogleEarthMac-Intel-7.0.2.8415.dmg" do
  app "Google Earth Web Plug-in.plugin"
  volumes_dir "Google Earth"
  dmg_name "GoogleEarthMac-Intel-7.0.2.8415"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/google_earth/GoogleEarthMac-Intel-7.0.2.8415.dmg"
  checksum "228fb458ac569bc51884528d2cbdabde5df9f7c57fbe2d1d6661529a6132b67f"
  action :install
  destination "/Library/Internet Plug-Ins/"
  type "dir"
  unmount true
# already_mounted true
end
