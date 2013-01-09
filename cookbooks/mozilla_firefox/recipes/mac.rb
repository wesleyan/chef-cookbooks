#
# Cookbook Name:: firefox
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install package
dmg_package "firefox-17.0.1.dmg" do
  app "Firefox"
  volumes_dir "Firefox"
  dmg_name "firefox-17.0.1"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/mozilla_firefox/firefox-17.0.1.dmg"
  checksum "75c2f54f2a961d70933a4a2be21e24b0a1320793e860c6fff11a5c5a8993bb51"
  action :install
  type "app"
end

# Add to dock
dock_add "/Applications/Firefox.app" do
  all_users true
#  restart true
end
