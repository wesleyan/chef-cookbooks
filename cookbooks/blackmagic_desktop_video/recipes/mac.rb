#
# Cookbook Name:: blackmagic_desktop_video
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install the package
dmg_package "Blackmagic Desktop Video" do
  app "Desktop Video Installer 9.7.2."
  volumes_dir "Desktop Video Installer"
  dmg_name "DesktopVideo_9.7.2"
  source "http://ims-chef.wesleyan.edu/os_x/blackmagic_desktop_video/DesktopVideo_9.7.2.dmg"
  checksum "5406572a7e61bd266ec650943c726dc4fa9f4c88cf2d079d3dbc6824fbf14790"
  action :install
  type "pkg"
  #package_id ""
  #version "4.3.0"
end