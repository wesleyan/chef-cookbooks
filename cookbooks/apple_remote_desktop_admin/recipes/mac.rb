#
# Cookbook Name:: apple_remote_desktop_admin
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base pkg.
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

# Install update pkg.
dmg_package "Apple Remote Desktop Admin Update" do
  app "RemoteDesktopAdmin370"
  volumes_dir "Apple Remote Desktop 3.7 Admin Update"
  dmg_name "RemoteDesktopAdmin370"
  source "http://ims-chef.wesleyan.edu/os_x/apple_remote_desktop_admin/RemoteDesktopAdmin370.dmg"
  checksum "e87fe2c90adee430711671f5eefb2020af71fc76988521c496896f1d1518cb55"
  action :install
  type "pkg"
  package_id "com.apple.pkg.RemoteDesktopAdmin370"
end

# Drop in our settings to suppress serial prompt.
dmg_package "Remote Desktop Settings" do
  app "ARD Settings"
  volumes_dir "ARD Settings"
  dmg_name "ARDSettings"
  source "http://ims-chef.wesleyan.edu/os_x/apple_remote_desktop_admin/ARDSettings.dmg"
  checksum "641cedf0a26a484f0f0362e9f64e0ff338de1b80f2160cd2478cc750d80619ad"
  action :install
  type "pkg"
  version "1.0.0"
  package_id "edu.wesleyan.ardsettings"
end