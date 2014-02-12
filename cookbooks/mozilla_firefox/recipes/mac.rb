#
# Cookbook Name:: mozilla_firefox
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# 
# Install package
dmg_package "firefox-27.0.dmg" do
  app "Firefox"
  volumes_dir "Firefox"
  dmg_name "firefox-27.0"
  source "http://ims-chef.wesleyan.edu/os_x/mozilla_firefox/firefox-27.0.dmg"
  checksum "94285157b0a97efb372f9ba2a27fc1c929caae260931d672538688c6d0a41407"
  action :install
  type "pkg"
  package_id "org.mozilla.firefox.pkg"
  version "27.0.0"
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


