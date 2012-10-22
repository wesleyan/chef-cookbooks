#
# Cookbook Name:: firefox
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Firefox 16.0.1.dmg" do
  app "Firefox"
  volumes_dir "Firefox"
  dmg_name "Firefox 16.0.1"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/mozilla_firefox-16/Firefox%2016.0.1.dmg"
  checksum "5911843c3b4c2a55105ceacba8a377bce897c984ee202bed963df34089fecae9"
  action :install
  type "app"
end