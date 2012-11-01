#
# Cookbook Name:: chrome
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "googlechrome.dmg" do
  app "Google Chrome"
  volumes_dir "Google Chrome"
  dmg_name "googlechrome"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/google_chrome-22/googlechrome.dmg"
  checksum "81ba5c8c244d1319e67062ad228d345b3a48e434d56d369d32d34895109efa24"
  action :install
  type "app"
end

dock_add "/Applications/Google Chrome.app" do
  all_users true
  restart true  
end