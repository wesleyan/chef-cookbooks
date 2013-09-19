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
  dmg_name "xcode_5"
  source "http://ims-chef.wesleyan.edu/os_x/apple_xcode/xcode_5.dmg"
  checksum "6057df3e63122c6a3895e3524b8d538e1a34294abed216eb342b8dab8815318e"
  action :install
  type "app"
  package_id "com.apple.pkg.Xcode"
  version "5.0.0"
end

# Install Xcode Command Line Tools
dmg_package "Xcode Command Line Tools" do
  app "Command Line Tools (Mountain Lion)"
  volumes_dir "Command Line Tools (Mountain Lion)"
  dmg_name "command_line_tools_os_x_mountain_lion_for_xcode__september_2013"
  source "http://ims-chef.wesleyan.edu/os_x/apple_xcode/command_line_tools_os_x_mountain_lion_for_xcode__september_2013.dmg"
  checksum "6f1551fcf637c3600a04150244ba3767bd2c975874f4671a714d75bb579778ff"
  action :install
  type "mpkg"
  package_id "com.apple.pkg.DeveloperToolsCLI"
  version "5.0.0913"
end 

# Install Mobile Support
dmg_package "Xcode DevSDK" do
  app "XCode DevSDK"
  volumes_dir "Xcode DevSDK"
  dmg_name "xcode-devsdk"
  source "http://ims-chef.wesleyan.edu/os_x/apple_xcode/xcode-devsdk.dmg"
  checksum "19061cff7c937297c309cd8c28a8821c1ba18b7b16caf291a643d801dc5347a0"
  action :install
  type "pkg"
  package_id "com.apple.pkg.DevSDK"
  version "4.6.10413"
end

# Seed plist file to suppress first launch dialogues.
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dt.Xcode.plist" do
  mode 0644
end

# Pull down our license acceptance script and run it.
cookbook_file "/tmp/accept_license"
execute "/usr/bin/env expect -f /tmp/accept_license"