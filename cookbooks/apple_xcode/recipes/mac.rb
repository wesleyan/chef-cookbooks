#
# Cookbook Name:: apple_xcode
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Xcode
dmg_package "Apple Xcode" do
  app "Xcode"
  volumes_dir "Xcode"
  dmg_name "xcode-4.6.3"
  source "http://ims-chef.wesleyan.edu/os_x/apple_xcode/xcode-4.6.3.dmg"
  checksum "07c454db2e7b09c7607df33b2d1d7cd3b04cdd9dfcbf9719db0bd0b0e310b69f"
  action :install
  type "app"
  package_id "com.apple.pkg.Xcode"
  version "4.6.3"
end

# Install Xcode Command Line Tools
dmg_package "Xcode Command Line Tools" do
  app "Command Line Tools (Mountain Lion)"
  volumes_dir "Command Line Tools (Mountain Lion)"
  dmg_name "xcode-4.6.2-cltools-0413"
  source "http://ims-chef.wesleyan.edu/os_x/apple_xcode/xcode-4.6.2-cltools-0413.dmg"
  checksum "309a753e0fadde2a51a5863baa272d1962bb79088184b88af39327e13bdf9fda"
  action :install
  type "mpkg"
  package_id "com.apple.pkg.DeveloperToolsCLI"
  version "4.6.2.0413"
end

# Is this still needed? I thought it was the old way of accepting the license.
dmg_package "Xcode DevSDK" do
  app "XCode DevSDK"
  volumes_dir "Xcode DevSDK"
  dmg_name "xcode-devsdk"
  source "http://ims-chef.wesleyan.edu/os_x/apple_xcode/xcode-devsdk.dmg"
  checksum "19061cff7c937297c309cd8c28a8821c1ba18b7b16caf291a643d801dc5347a0"
  action :install
  type "pkg"
  package_id "com.apple.pkg.DevSDK"
  version "4.6.1.0413"
end

cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dt.Xcode.plist" do
  mode 0644
end

cookbook_file "/tmp/accept_license"
execute "/usr/bin/env expect -f /tmp/accept_license"