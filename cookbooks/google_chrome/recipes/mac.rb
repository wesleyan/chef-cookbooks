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
  dmg_name "googlechrome-25.0.1364.172.dmg"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/google_chrome/googlechrome-25.0.1364.172.dmg"
  checksum "945f0485fda523c818cac47bec9fd09256b3ee98a0c6fd1b0ecb60829e99f8f7"
  action :install
  type "app"
end

# Add shortcut to dock
dock_add "/Applications/Google Chrome.app" do
  all_users true
#  restart true  
end
