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
  dmg_name "google_chrome-32.0.1700.107"
  source "http://ims-chef.wesleyan.edu/os_x/google_chrome/google_chrome-32.0.1700.107.dmg"
  checksum "80961572da2ba44341bb60db9eeddf136c87d576348d81108273c473a9aac6f7"
  action :install
  type "app"
  package_id "com.google.Chrome"
  version "32.1700.107"
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