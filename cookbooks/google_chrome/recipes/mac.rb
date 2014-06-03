#
# Cookbook Name:: google_chrome
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Chrome
dmg_package "Google Chrome" do
  app "GoogleChrome"
  volumes_dir "GoogleChrome"
  dmg_name "googlechrome-35.0.1916.114"
  source "http://ims-chef.wesleyan.edu/os_x/google_chrome/googlechrome-35.0.1916.114.dmg"
  checksum "674bae20a93423933545575228de6ca280a832ca85e4ca5f72a42a4158552293"
  action :install
  type "pkg"
  package_id "com.google.Chrome"
  version "35.0.1916114"
end

# Add shortcut to dock
dock_add "/Applications/Google Chrome.app" do
  all_users true
# restart true  
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