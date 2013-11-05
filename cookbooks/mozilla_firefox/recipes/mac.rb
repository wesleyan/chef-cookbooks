#
# Cookbook Name:: mozilla_firefox
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# 
# Install package
dmg_package "firefox-25.0.dmg" do
  app "Firefox"
  volumes_dir "Firefox"
  dmg_name "firefox-25.0"
  source "http://ims-chef.wesleyan.edu/os_x/mozilla_firefox/firefox-25.0.dmg"
  checksum "f2e9339eb8d72773258ec1f1f880b0ea209645b1cda8473db04e26a1347e0f99"
  action :install
  type "app"
  package_id "org.mozilla.firefox"
  version "25.0.0"
end

# Add to dock
dock_add "/Applications/Firefox.app" do
  all_users true
#  restart true
end

# suppress import settings
cookbook_file "/Applications/Firefox.app/Contents/MacOS/override.ini" do
  mode 0755
end

# import CCK addon
directory "/Applications/Firefox.app/Contents/MacOS/distribution"
directory "/Applications/Firefox.app/Contents/MacOS/distribution/bundles"
cookbook_file "/tmp/firefox.zip" do
  mode 0666
end
execute 'unzip /tmp/firefox.zip -d "/Applications/Firefox.app/Contents/MacOS/distribution/bundles/"' do
  returns [0,1]
end


