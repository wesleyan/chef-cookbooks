#
# Cookbook Name:: apple_xcode
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Xcode
dmg_package "XCode 4.6.2" do
  app "Xcode"
  volumes_dir "Xcode"
  dmg_name "xcode-4.6.2"
  source "http://ims-chef.wesleyan.edu/os_x/apple_xcode/xcode-4.6.2.dmg"
  checksum "3057224339823dae8a56943380a438065e92cff1ad4ab5a6a84f94f7a94dc035"
  action :install
  type "app"
  package_id "com.apple.pkg.Xcode"
  version "4.6.2"
end

# Install Xcode Command Line Tools
dmg_package "xcode-4.6-2-cltools-0413" do
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
