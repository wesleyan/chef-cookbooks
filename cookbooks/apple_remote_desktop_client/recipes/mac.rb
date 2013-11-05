#
# Cookbook Name:: apple_remote_desktop_client
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our pkg
dmg_package "Apple Remote Desktop Client" do
  app "RemoteDesktopClient"
  volumes_dir "Apple Remote Desktop 3.7 Client Update"
  dmg_name "RemoteDesktopClient3.7"
  source "http://ims-chef.wesleyan.edu/os_x/apple_remote_desktop_client/RemoteDesktopClient3.7.dmg"
  checksum "dee02ddbbc614af7cc9c1282fc8abfeb1b21f26ab0aeb913d4cdb7bee637436c"
  action :install
  type "pkg"
  package_id "com.apple.pkg.RemoteDesktopClient"
  version "3.7.0"
end
