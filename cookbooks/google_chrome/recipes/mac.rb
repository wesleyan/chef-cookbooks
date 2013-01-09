#
# Cookbook Name:: chrome
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Chrome
dmg_package "googlechrome.dmg" do
  app "Google Chrome"
  volumes_dir "Google Chrome"
  dmg_name "googlechrome"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/google_chrome/googlechrome-23.0.1271.101.dmg"
  checksum "848d861c0804706f88b58da9f21d554cf68d6e522e8553eae4333e557a431d5a"
  action :install
  type "app"
end

# Add shortcut to dock
dock_add "/Applications/Google Chrome.app" do
  all_users true
#  restart true  
end