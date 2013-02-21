#
# Cookbook Name:: google_chrome
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Chrome
dmg_package "googlechrome-24.0.1312.52.dmg" do
  app "Google Chrome"
  volumes_dir "Google Chrome"
  dmg_name "googlechrome-24.0.1312.52"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/google_chrome/googlechrome-24.0.1312.52.dmg"
  checksum "76fbd234ac3f110ae20f5352691584a1c1b7e19acc91b488df1b74d8398e1934"
  action :install
  type "app"
end

# Add shortcut to dock
dock_add "/Applications/Google Chrome.app" do
  all_users true
#  restart true  
end