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
  dmg_name "googlechrome-26.0.1410.65.dmg"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/google_chrome/googlechrome-26.0.1410.65.dmg"
  checksum "0c6709d3316ea679d5772f9b604a481a049f27b8067b2f67c8c592d9d4d227d"
  action :install
  type "app"
  package_id "com.google.chrome"
  version "26.1410.65"
end

# Add shortcut to dock
dock_add "/Applications/Google Chrome.app" do
  all_users true
#  restart true  
end

# Set Chrome to be the default browser

launch_association_set_file_handler "public.html" do
  bundle_id "com.google.chrome"
  all_users true
end

launch_association_set_file_handler "public.url" do
  bundle_id "com.google.chrome"
  all_users true
end

launch_association_set_url_handler "http" do
  bundle_id "com.google.chrome"
  all_users true
end

launch_association_set_url_handler "https" do
  bundle_id "com.google.chrome"
  all_users true
end

launch_association_set_url_handler "ftp" do
  bundle_id "com.google.chrome"
  all_users true
end

cookbook_file "/tmp/chrome.zip" do
  mode 0666
end

directory "/Library/Google"
cookbook_file "/Library/Google/Google Chrome Master Preferences" do
  mode 0666
end
