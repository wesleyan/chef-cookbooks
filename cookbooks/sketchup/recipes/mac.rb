#
# Cookbook Name:: sketchup
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "SketchUpMEN.dmg" do
  app "SketchUp 8 Installer"
  volumes_dir "SketchUp 8.0 Installer.pkg"
  dmg_name "SketchUpMEN.dmg"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/trimble_sketchup-8/SketchUpMEN.dmg"
  checksum "cf00de1a26e831514e47e7f1f5bb86fb1d1860e6f668c8d5cd66f24667160a1c"
  action :install
  type "pkg"
  package_id "com.google.sketchup8.sketchup.application"
end

