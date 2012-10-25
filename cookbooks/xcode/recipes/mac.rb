#
# Cookbook Name:: xcode
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "xcode4510417539a.dmg" do
  app "Xcode"
  volumes_dir "Xcode"
  dmg_name "xcode4510417539a"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_xcode-4/xcode4510417539a.dmg"
  checksum "4a54e6e958094ba7ce701714806f38a202427a9706dc0697bf69f25bb0c04c1d"
  action :install
  type "app"
end

dmg_package "xcode451cltools_10_86938200a.dmg" do
  app "Command Line Tools (Mountain Lion)"
  volumes_dir "Command Line Tools (Mountain Lion)"
  dmg_name "xcode451cltools_10_86938200a"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_xcode-4/xcode451cltools_10_86938200a.dmg"
  checksum "5c8044eea293fd6c3dbddcc8fab91b91b7a2cfb8cc90c0b095a865bba10c50c8"
  action :install
  type "mpkg"
  package_id "com.apple.pkg.DeveloperToolsCLI"
end
