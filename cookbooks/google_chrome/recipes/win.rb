#
# Cookbook Name:: google_chrome
# Recipe:: win
#
# Copyright 2014, Wesleyan University
# All rights reserved - Do Not Redistribute
#
# Install our MSI.
windows_package "Google Chrome" do
  source "http://ims-chef.wesleyan.edu/windows/google_chrome/googlechrome-35.0.1916.114.msi"
  checksum "a579f41a50b5adab149a0a9831d787625ece9df48b98e417cdcfe8519548da30"
  version "35.0.1916114"
end

# Seed in our bookmarks file, and our master preferences.
cookbook_file 'C:\bookmarks.html'
cookbook_file 'C:\Program Files (x86)\Google\Chrome\Application\master_preferences'