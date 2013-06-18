#
# Cookbook Name:: safari
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Comment out actual install for now as 10.8.4 updater includes Safari 6.0.5
#dmg_package "Update Safari" do
# app "Safari6.0.4Mountain"
# volumes_dir "Safari"
# dmg_name "safari-6.0.4"
# source "http://ims-chef.wesleyan.edu/os_x/apple_safari/safari-6.0.4.dmg"
# checksum "aea490ab7a4d6bfdaaf07b826c8e8e4469dc8ad6f9e826ad19b2e458478e71df"
# action :install
# type "pkg"
# package_id "com.apple.pkg.Safari6.0.4Mountain"
#end

# Add to dock
dock_add "/Applications/Safari.app" do
  all_users true
end

directory "/System/Library/User Template/English.lproj/Library/Safari"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.Safari.plist"
cookbook_file "/System/Library/User Template/English.lproj/Library/Safari/Bookmarks.plist"