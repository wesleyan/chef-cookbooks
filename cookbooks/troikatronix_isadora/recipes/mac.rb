#
# Cookbook Name:: troikatronix_isadora
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Isadora
dmg_package "isadoracore13fc24-std.dmg" do
  app "Isadora Core Installer"
  volumes_dir "Isadora Core Installer"
  dmg_name "isadoracore13fc24-std"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/troikatronix_isadora-1/isadoracore13fc24-std.dmg"
  checksum "56af006265c382e72ab73d33cce141a126c79736467b0a231871cdac75661322"
  action :install
  type "pkg"
end