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
end