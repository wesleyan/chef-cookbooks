#
# Cookbook Name:: apple_xcode
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Xcode
dmg_package "xcode-4.6.dmg" do
  app "apple_xcode-4.6"
  volumes_dir "Xcode"
  dmg_name "xcode-4.6"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_xcode/xcode-4.6.dmg"
  checksum "38599e50b0f2fa9dcd590da8315c6c42636b877d64f87556c6d27c0eef4fbd16"
  action :install
  type "pkg"
  package_id "applexcode-4.6"
end

# Install Xcode Command Line Tools
dmg_package "xcode-4.6-cltools-0113" do
  app "Command Line Tools (Mountain Lion)"
  volumes_dir "Command Line Tools (Mountain Lion)"
  dmg_name "xcode-4.6-cltools-0113"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_xcode/xcode-4.6-cltools-0113.dmg"
  checksum "cfc53d14a7e09661d4379da71ca6b73b836c3a5adcbe9b84929325cca96db8aa"
  action :install
  type "mpkg"
  package_id "com.apple.pkg.DeveloperToolsCLI"
end

# Accept Xcode license silently so homebrew will be able to properly build packages
#execute "xcodebuild -license"

# execute "xcode-select -switch /usr/bin"
