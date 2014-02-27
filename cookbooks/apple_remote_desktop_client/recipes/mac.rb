#
# Cookbook Name:: apple_remote_desktop_client
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our pkg
dmg_package "Apple Remote Desktop Client" do
  app "RemoteDesktopClient"
  volumes_dir "Apple Remote Desktop 3.7.1 Client Update"
  dmg_name "RemoteDesktopClient371"
  source "http://ims-chef.wesleyan.edu/os_x/apple_remote_desktop_client/RemoteDesktopClient371.dmg"
  checksum "36ae71ea8259e040743061a8aebe7b6f69eb1e8d1b235dfbc52420eb98e27f5a"
  action :install
  type "pkg"
  package_id "com.apple.pkg.RemoteDesktopClient"
  version "3.7.1"
end
