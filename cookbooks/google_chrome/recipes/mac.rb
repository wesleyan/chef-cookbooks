#
# Cookbook Name:: google_chrome
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Chrome
dmg_package "Google Chrome" do
  app "Google Chrome"
  volumes_dir "Google Chrome"
  dmg_name "googlechrome.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/google_chrome/googlechrome.dmg"
  checksum "8eef265f3fe3f996437b4611255079706eb8b45baf58c1a01a300d66e10bfedc"
  action :install
  type "app"
  package_id "com.google.chrome"
  version "27.0.1453.110"
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

directory "/System/Library/User Template/English.lproj/Library/Application Support"
execute 'rm -rf /System/Library/User Template/English.lproj/Library/Application Support/Google' # to ensure this is a fresh copy
execute 'unzip /tmp/chrome.zip -d "/System/Library/User Template/English.lproj/Library/Application Support/"' do
  returns [0,1]
end