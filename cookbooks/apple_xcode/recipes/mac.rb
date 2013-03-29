#
# Cookbook Name:: apple_xcode
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Xcode
dmg_package "XCode 4.6.1" do
  app "Xcode"
  volumes_dir "Xcode"
  dmg_name "xcode-4.6.1"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_xcode/xcode-4.6.1.dmg"
  checksum "6821e99fe1063700fb4f7ebf8db30600c1f4c7aba5fc1537ded140caaabb144a"
  action :install
  type "app"
  package_id "com.apple.Xcode"
  version "4.6.1"
end

# Install Xcode Command Line Tools
dmg_package "xcode-4.6-cltools-0113" do
  app "Command Line Tools (Mountain Lion)"
  volumes_dir "Command Line Tools (Mountain Lion)"
  dmg_name "xcode-4.6.1-cltools-0313"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_xcode/xcode-4.6.1-cltools-0313.dmg"
  checksum "b92615b14b47f7f372c2e7c7d8a36524bb895108cd9c1d3853d0802ec2c97d91"
  action :install
  type "mpkg"
  package_id "com.apple.pkg.DeveloperToolsCLI"
  version "4.6.1.1303"
end

cookbook_file "0313 XCode License" do
  backup false
  path "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dt.Xcode.plist"
  source "com.apple.dt.Xcode.plist"
  mode 0600
  :create
end
# execute "xcode-select -switch /usr/bin"
