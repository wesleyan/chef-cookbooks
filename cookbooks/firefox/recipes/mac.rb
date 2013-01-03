#
# Cookbook Name:: firefox
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install package
dmg_package "Firefox 17.0.1.dmg" do
  app "Firefox"
  volumes_dir "Firefox"
  dmg_name "Firefox 17.0.1"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/mozilla_firefox-16/Firefox%2017.0.1.dmg"
  checksum "54a76384f3a4a241fd6d7c78d98c33a85792b6fd1ff9df7de2147f3b9415db29"
  action :install
  type "app"
end

# Add to dock
dock_add "/Applications/Firefox.app" do
  all_users true
#  restart true
end
