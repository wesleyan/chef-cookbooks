#
# Cookbook Name:: handbrake
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
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