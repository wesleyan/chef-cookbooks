#
# Cookbook Name:: apple_osx_updates
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
#
# Install 10.8.4 update, non-combo as our base has to be == 10.8.3 for hardware reasons.
dmg_package "OS X Update" do
  app "OSXUpd10.8.4"
  volumes_dir "OS X 10.8.4 Update"
  dmg_name "OSXUpd10.8.4"
  source "http://ims-chef.wesleyan.edu/os_x/apple_osx_updates/OSXUpd10.8.4.dmg"
  checksum "07d0a381f54911c6ae4f764452d308d439c30e0a3737ea43d1cd3dd24b205296"
  action :install
  type "pkg"
  package_id "com.apple.pkg.update.os.10.8.4.12E55.delta"
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