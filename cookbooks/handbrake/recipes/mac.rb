#
# Cookbook Name:: handbrake
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base Handbrake package.
dmg_package "HandBrake" do
  app "HandBrake"
  volumes_dir "HandBrake-0.9.9-MacOSX.6_GUI_x86_64"
  dmg_name "HandBrake-0.9.9-MacOSX.6_GUI_x86_64"
  source "http://ims-chef.wesleyan.edu/os_x/handbrake/HandBrake-0.9.9-MacOSX.6_GUI_x86_64.dmg"
  checksum "050f9d0d3a126b25d24cb4971062d66f4f975317b6586f8c288795c17a0c05f9"
  action :install
  type "app"
  package_id "fr.handbrake"
  version "0.9.9"
end

# As of VLC 2.0.x libdvdcss is packaged seperately, hence HandBrake needs it installed to decrypt DVDs.
dmg_package "libdvdcss for HandBrake" do
  app "libdvdcss"
  volumes_dir "libdvdcss"
  dmg_name "libdvdcss-1.2.12"
  source "http://ims-chef.wesleyan.edu/os_x/handbrake/libdvdcss-1.2.12.dmg"
  checksum "99406715de0cba91c836731fb9443d26d61736f4b9670963b8e2fd684c9f68ec"
  action :install
  type "pkg"
  package_id "org.videolan.vlc.libdvdcss.2.pkg"
  version "1.2.12"
end
