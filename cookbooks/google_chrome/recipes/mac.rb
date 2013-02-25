#
# Cookbook Name:: google_chrome
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Chrome
dmg_package "Google Chrome" do
  app "Google Chrome"
  volumes_dir "Google Chrome"
  dmg_name "googlechrome-25.0.1364.99.dmg"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/google_chrome/googlechrome-25.0.1364.99.dmg"
  checksum "56df8f2ea99efd62c4c47d7e066c57d9edccecc4cd41dff108c7a7fee70da12e"
  action :install
  type "app"
end

# Add shortcut to dock
dock_add "/Applications/Google Chrome.app" do
  all_users true
#  restart true  
end
