#
# Cookbook Name:: mozilla_firefox
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install package
dmg_package "firefox-22.0.dmg" do
  app "Firefox"
  volumes_dir "Firefox"
  dmg_name "firefox-22.0"
  source "http://ims-chef.wesleyan.edu/os_x/mozilla_firefox/firefox-22.0.dmg"
  checksum "bbbefe0e24abc9511747b4a1a858d38cd93d4e2a26ce7b6f9a73dd4001ace747"
  action :install
  type "app"
  package_id "org.mozilla.firefox"
  version "22.0.0"
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


