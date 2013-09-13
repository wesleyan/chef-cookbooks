#
# Cookbook Name:: apple_osx_updates
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
#
# Install 10.8.5 update, combo as our base has is currently 10.8.3 until I roll a new base.
dmg_package "OS X Update" do
  app "OSXUpdCombo10.8.5"
  volumes_dir "OS X 10.8.5 Update Combo"
  dmg_name "OSXUpdCombo10.8.5"
  source "http://ims-chef.wesleyan.edu/os_x/apple_osx_updates/OSXUpdCombo10.8.5.dmg"
  checksum "1c0f6eef4469313fead1bd6aaf49ffb62aa82e2ab4ebe1b409ff295d121c07ff"
  action :install
  type "pkg"
  package_id "com.apple.pkg.update.os.10.8.5.12F37.combo"
  restart true
end

# Install current security update package.
dmg_package "OS X Security Update" do
  app "SecUpd2013-003"
  volumes_dir "Security Update 2013-003"
  dmg_name "SecUpd2013-003"
  source "http://ims-chef.wesleyan.edu/os_x/apple_osx_updates/SecUpd2013-003.dmg"
  checksum "4365a7d953e0c45c5e0eaa72f92f6a1239bc64d20f9d0931229bb934cbbb045a"
  action :install
  type "pkg"
  package_id "com.apple.pkg.update.security.10.8.4.12E1009.2013.003"
end