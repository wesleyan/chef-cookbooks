#
# Cookbook Name:: google_chrome
# Recipe:: win
#
# Copyright 2013, Wesleyan University
# All rights reserved - Do Not Redistribute
#
# Install our MSI.
windows_package "Google Chrome" do
  source "http://ims-chef.wesleyan.edu/windows/google_chrome/googlechrome-30.0.1599.66.msi"
  checksum "d1f700887d6b9dfc54eb81c507c9c1e8e791ed6678f6d575f194bb8cc8493ae5"
  version "30.0.159966"
end

# Seed in our bookmarks file, and our master preferences.
cookbook_file 'C:\bookmarks.html'
cookbook_file 'C:\Program Files (x86)\Google\Chrome\Application\master_preferences'