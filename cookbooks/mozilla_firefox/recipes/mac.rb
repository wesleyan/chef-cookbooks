#
# Cookbook Name:: mozilla_firefox
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install package
dmg_package "firefox-20.0.dmg" do
  app "Firefox"
  volumes_dir "Firefox"
  dmg_name "firefox-20.0"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/mozilla_firefox/firefox-20.0.dmg"
  checksum "4848df9d4ce810bea0fc27ed4766bbfffe6afac184c601b07931da86b028720c"
  action :install
  type "app"
  package_id "org.mozilla.firefox"
  version "20.0.0"
end

# Add to dock
dock_add "/Applications/Firefox.app" do
  all_users true
#  restart true
end

directory "/Applications/Firefox.app/Contents/MacOS/defaults"
directory "/Applications/Firefox.app/Contents/MacOS/defaults/preferences"
cookbook_file "/Applications/Firefox.app/Contents/MacOS/defaults/preferences/defaults.js" do
  mode 0666
end

cookbook_file "/Applications/Firefox.app/Contents/MacOS/override.ini" do
  mode 0666
end

cookbook_file "/Applications/Firefox.app/Contents/MacOS/mozilla.cfg" do
  mode 0666
end