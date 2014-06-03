#
# Cookbook Name:: apple_xcode
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Xcode (package captured from Mac App Store)
dmg_package "Apple Xcode" do
  app "Xcode"
  volumes_dir "Xcode"
  dmg_name "xcode-5.1.1"
  source "http://sw.wesleyan.edu/os_x/apple_xcode/xcode-5.1.1.dmg"
  checksum "d800e1078cf592fd69983f2e9b8b743ef6494ae4b32bfe308c3e43711c77a765"
  action :install
  type "pkg"
  package_id "com.apple.pkg.XcodeMAS_iOSSDK_7_0"
  version "5.1.1"
end

# Install MobileDevice pkg required for Xcode to launch (we pull this from /Applications/Xcode.app/Contents/Resources/Packages/)
dmg_package "Apple Xcode MobileDevice" do
  app "MobileDevice"
  volumes_dir "MobileDevice"
  dmg_name "xcode_mobiledevice-5.1.1"
  source "http://sw.wesleyan.edu/os_x/apple_xcode/xcode_mobiledevice-5.1.1.dmg"
  checksum "29fecdbe37058c7e77779d29387ef985617eeb1ff2318c6e0c7f99d2a1754da8"
  action :install
  type "pkg"
  package_id "com.apple.pkg.MobileDevice"
  version "5.1.1"
end

# Install MobileDeviceDevelopment pkg required for Xcode to launch (we pull this from /Applications/Xcode.app/Contents/Resources/Packages/)
dmg_package "Apple Xcode MobileDevice" do
  app "MobileDeviceDevelopment"
  volumes_dir "MobileDeviceDevelopment"
  dmg_name "xcode_mobiledevicedev-5.1.1"
  source "http://sw.wesleyan.edu/os_x/apple_xcode/xcode_mobiledevicedev-5.1.1.dmg"
  checksum "e781af940eb0cff91f855844674be26cb8cb2b215599dc38008942d23c997860"
  action :install
  type "pkg"
  package_id "com.apple.pkg.MobileDeviceDevelopment"
  version "5.1.1"
end

# Install Xcode Command Line Tools
dmg_package "Apple Xcode Command Line Tools" do
  app "Command Line Tools (OS X 10.9)"
  volumes_dir "Command Line Developer Tools"
  dmg_name "xcode_cltools-201404"
  source "http://sw.wesleyan.edu/os_x/apple_xcode/xcode_cltools-201404.dmg"
  checksum "8bdb96ff5730ba4e583f7a30932ba7ad43741af944b3df675316213d54b5b4c5"
  action :install
  type "pkg"
  package_id "com.apple.pkg.DeveloperToolsCLI"
  version "2014.04"
end

# Silently accept Xcode license.
execute "/Applications/Xcode.app/Contents/Developer/usr/bin/xcodebuild -license accept"