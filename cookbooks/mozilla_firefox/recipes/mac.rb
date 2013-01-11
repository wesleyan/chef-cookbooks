#
# Cookbook Name:: mozilla_firefox
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install package
dmg_package "firefox-18.0.dmg" do
  app "Firefox"
  volumes_dir "Firefox"
  dmg_name "firefox-18.0"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/mozilla_firefox/firefox-18.0.dmg"
  checksum "48bb743b075fae970ac547e007e86c547c2d283037281378855240287f4b782d"
  action :install
  type "app"
end

# Add to dock
dock_add "/Applications/Firefox.app" do
  all_users true
#  restart true
end
