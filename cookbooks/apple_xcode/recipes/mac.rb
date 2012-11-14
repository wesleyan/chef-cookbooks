#
# Cookbook Name:: apple_xcode
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Xcode
dmg_package "xcode4520418508a.dmg" do
  app "Xcode"
  volumes_dir "Xcode"
  dmg_name "xcode4520418508a"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_xcode-4/xcode4520418508a.dmg"
  checksum "8493321dbf82f306948356e01a043a94ed843edbaea288cc23f3c3a6c987ad9b"
  action :install
  type "app"
end

# Install Xcode Command Line Tools
dmg_package "xcode452cltools10_86938211a.dmg" do
  app "Command Line Tools (Mountain Lion)"
  volumes_dir "Command Line Tools (Mountain Lion)"
  dmg_name "xcode452cltools10_86938211a"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_xcode-4/xcode452cltools10_86938211a.dmg"
  checksum "7eb3f179466bf231862a98f4c65c526e0a3ccfbab9e7e97da66ccbe16e6da27d"
  action :install
  type "mpkg"
  #package_id "com.apple.pkg.DeveloperToolsCLI"
end

# Accept Xcode license silently so homebrew will be able to properly build packages
execute "xcodebuild -license"

# execute "xcode-select -switch /usr/bin"