#
# Cookbook Name:: mozilla_firefox
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install package
dmg_package "firefox-23.0.dmg" do
  app "Firefox"
  volumes_dir "Firefox"
  dmg_name "firefox-23.0"
  source "http://ims-chef.wesleyan.edu/os_x/mozilla_firefox/firefox-23.0.dmg"
  checksum "4406cb7522c673bc400b14ea30234b434671d61fa4775d7f6405cfcebe333f4e"
  action :install
  type "app"
  package_id "org.mozilla.firefox"
  version "23.0.0"
end

# Add to dock
dock_add "/Applications/Firefox.app" do
  all_users true
#  restart true
end

# suppress import settings
cookbook_file "/Applications/Firefox.app/Contents/MacOS/override.ini" do
  mode 0666
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


