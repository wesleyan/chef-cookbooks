#
# Cookbook Name:: google_earth
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "Google Earth" do
  app "Google Earth"
  volumes_dir "Google Earth"
  dmg_name "google_earth-7.1.1.1871.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/google_earth/google_earth-7.1.1.1871.dmg"
  checksum "46a494d31ccfd95e5339595377d29edda615800ebf583f4d195757794642f58"
  action :install
  unmount false
  type "app"
  package_id "com.google.earth"
  version "7.1.11871"
end

# Install web plugin
dmg_package "Google Earth Web Plug-in" do
  app "Google Earth Web Plug-in.plugin"
  volumes_dir "Google Earth"
  dmg_name "google_earth-7.1.1.1871"
  source "http://ims-chef.wesleyan.edu/os_x/google_earth/google_earth-7.1.1.1871.dmg"
  checksum "46a494d31ccfd95e5339595377d29edda615800ebf583f4d195757794642f58"
  action :install
  destination "/Library/Internet Plug-Ins/"
  type "dir"
  unmount true
  package_id "com.google.earth.plugin"
  version "7.1.11871"
end
