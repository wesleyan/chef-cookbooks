#
# Cookbook Name:: mozilla_firefox
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install package
dmg_package "firefox-19.0.2.dmg" do
  app "Firefox"
  volumes_dir "Firefox"
  dmg_name "firefox-19.0.2"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/mozilla_firefox/firefox-19.0.2.dmg"
  checksum "d17740256876df51da4d9627d837662f74690ac167886784e53a10dae807b7cf"
  action :install
  type "app"
end

# Add to dock
dock_add "/Applications/Firefox.app" do
  all_users true
#  restart true
end
