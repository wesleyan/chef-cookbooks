#
# Cookbook Name:: rawcamera
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "RAWCameraUpdate4.dmg" do
  app "RAWCameraUpdate4"
  volumes_dir "Digital Camera RAW Compatibility Update 4.01"
  dmg_name "RAWCameraUpdate4"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_digital_camera_raw-4/RAWCameraUpdate4.dmg"
  checksum "a9a2701a9d83abc93c002b65f57c630db3d2444990188683bc29e50676c71e87"
  action :install
  type "pkg"
end