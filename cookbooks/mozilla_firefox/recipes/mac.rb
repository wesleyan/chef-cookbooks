#
# Cookbook Name:: mozilla_firefox
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install package
dmg_package "firefox-21.0.dmg" do
  app "Firefox"
  volumes_dir "Firefox"
  dmg_name "firefox-21.0"
  source "http://ims-chef.wesleyan.edu/os_x/mozilla_firefox/firefox-21.0.dmg"
  checksum "430ffde346935f13cfd64f601f4fc3018c057a92a7c14ab5dee7fac6d7f1c417"
  action :install
  type "app"
  package_id "org.mozilla.firefox"
  version "21.0.0"
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


