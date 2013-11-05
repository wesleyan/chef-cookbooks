#
# Cookbook Name:: safari
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our pkg
dmg_package "Update Safari" do
 app "Safari6.1MountainLion"
 volumes_dir "Safari"
 dmg_name "safari-6.1"
 source "http://ims-chef.wesleyan.edu/os_x/apple_safari/safari-6.1.dmg"
 checksum "a8fb24963ff844deca0ef9f467b852fe2c09d51ccabf535d6a2ac3388d5dbe46"
 action :install
 type "pkg"
 package_id "com.apple.pkg.Safari6.1MountainLion"
end

# Add to dock
dock_add "/Applications/Safari.app" do
  all_users true
end

# Seed plist file to enable Java/suppress Pop-ups.
default_profile "com.apple.Safari.plist" do
  path "Library/Preferences"
  cookbook 'apple_safari'
end

# Seed Bookmarks file.
default_profile "Bookmarks.plist" do
  path "Library/Safari"
  cookbook 'apple_safari'
end
