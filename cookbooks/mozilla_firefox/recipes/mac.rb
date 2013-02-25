#
# Cookbook Name:: mozilla_firefox
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install package
dmg_package "firefox-19.0.dmg" do
  app "Firefox"
  volumes_dir "Firefox"
  dmg_name "firefox-19.0"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/mozilla_firefox/firefox-19.0.dmg"
  checksum "4585e65043d5c7ea45534216706c15a1a2ae6fba0b457b83db550a5546b1422b"
  action :install
  type "app"
end

# Add to dock
dock_add "/Applications/Firefox.app" do
  all_users true
#  restart true
end
