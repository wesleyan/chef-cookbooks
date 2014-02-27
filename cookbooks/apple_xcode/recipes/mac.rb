#
# Cookbook Name:: apple_xcode
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Xcode (package capture from Mac App Store)
dmg_package "Apple Xcode" do
  app "Xcode"
  volumes_dir "Xcode"
  dmg_name "xcode-5.0.2"
  source "http://ims-chef.wesleyan.edu/os_x/apple_xcode/xcode-5.0.2.dmg"
  checksum "07c454db2e7b09c7607df33b2d1d7cd3b04cdd9dfcbf9719db0bd0b0e310b69f"
  action :install
  type "pkg"
  package_id "com.apple.pkg.XcodeMAS_iOSSDK_7_0"
  version "5.0.2"
end

# Install MobileDevice pkg required for Xcode to launch (we pull this from /Applications/Xcode.app/Contents/Resources/Packages/)
dmg_package "Apple Xcode MobileDevice" do
  app "MobileDevice"
  volumes_dir "MobileDevice"
  dmg_name "xcode_mobiledevice-5.0.2"
  source "http://ims-chef.wesleyan.edu/os_x/apple_xcode/xcode_mobiledevice-5.0.2.dmg"
  checksum "0b5c1a17b45e0521a142048f17b587a467f2bfebafa46721dadacb7da26e7121"
  action :install
  type "pkg"
  package_id "com.apple.pkg.MobileDevice"
  version "5.0.2"
end

# Install MobileDeviceDevelopment pkg required for Xcode to launch (we pull this from /Applications/Xcode.app/Contents/Resources/Packages/)
dmg_package "Apple Xcode MobileDevice" do
  app "MobileDeviceDevelopment"
  volumes_dir "MobileDeviceDevelopment"
  dmg_name "xcode_mobiledevicedev-5.0.2"
  source "http://ims-chef.wesleyan.edu/os_x/apple_xcode/xcode_mobiledevicedev-5.0.2.dmg"
  checksum "ab263cf5f1ef9a4c9c9586fb2c49c6e73d56d8045bfc500887fda441a9b94eb9"
  action :install
  type "pkg"
  package_id "com.apple.pkg.MobileDeviceDevelopment"
  version "5.0.2"
end

# Install Xcode Command Line Tools
dmg_package "Apple Xcode Command Line Tools" do
  app "Command Line Tools (Mountain Lion)"
  volumes_dir "Command Line Tools (Mountain Lion)"
  dmg_name "xcode_cltools-102013"
  source "http://ims-chef.wesleyan.edu/os_x/apple_xcode/xcode_cltools-102013.dmg"
  checksum "635c1cf6c93b397ef882c27211ef01e54e5b1d9d2d92fc870f1e07efd54cfe35"
  action :install
  type "mpkg"
  package_id "com.apple.pkg.DeveloperToolsCLI"
  version "2013.10"
end

# Silently accept Xcode license.
execute "/Applications/Xcode.app/Contents/Developer/usr/bin/xcodebuild -license accept"