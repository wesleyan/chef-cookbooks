#
# Cookbook Name:: apple_remote_desktop_admin
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base pkg
dmg_package "Apple Remote Desktop Admin" do
  app "RemoteDesktopAdmin"
  volumes_dir "RemoteDesktopAdmin"
  dmg_name "RemoteDesktopAdmin3"
  source "http://ims-chef.wesleyan.edu/os_x/apple_remote_desktop_admin/RemoteDesktopAdmin3.dmg"
  checksum "dee02ddbbc614af7cc9c1282fc8abfeb1b21f26ab0aeb913d4cdb7bee637436c"
  action :install
  type "mpkg"
  package_id "com.apple.pkg.RemoteDesktopAdmin"
end

# Install update pkg
dmg_package "Apple Remote Desktop Admin Update" do
  app "RemoteDesktopAdmin361"
  volumes_dir "Apple Remote Desktop 3.6.1 Admin Update"
  dmg_name "RemoteDesktopAdmin361"
  source "http://ims-chef.wesleyan.edu/os_x/apple_remote_desktop_admin/RemoteDesktopAdmin361.dmg"
  checksum "4de8f7af20cff4817ee63b179134ef354584429951a34198cef333d1dc36c024"
  action :install
  type "pkg"
  package_id "com.apple.pkg.RemoteDesktopAdmin361"
end

dmg_package "Remote Desktop Settings" do
  app "Remote Desktop Settings"
  volumes_dir "Remote Desktop Settings"
  dmg_name "RemoteDesktopSettings"
  source "http://ims-chef.wesleyan.edu/os_x/apple_remote_desktop_admin/RemoteDesktopSettings.dmg"
  checksum "fe481bbbffe197c16c86faac2023a1074976ed0b2a9f21d46e25c8edf7d556a1"
  action :install
  type "pkg"
  version "1.0.0"
  package_id "com.apple.pkg.settings.RemoteDesktopAdmin"
end