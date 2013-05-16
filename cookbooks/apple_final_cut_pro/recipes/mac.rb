#
# Cookbook Name:: finalcutpro
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install FCP
dmg_package "Final Cut Pro X" do
  app "Final Cut Pro"
  volumes_dir "Final Cut Pro"
  dmg_name "final_cut_pro-10.0.8"
  source "http://ims-chef.wesleyan.edu/os_x/apple_final_cut_pro/final_cut_pro-10.0.8.dmg"
  checksum "8a6b723d8d663f54c5deda7584c5ecf52772d937af59edee34fed69797995b0a"
  action :install
  type "app"
  package_id "com.apple.pkg.FinalCut"
  version "10.0.8"
end

# Install Supplemental content
dmg_package "Final Cut Pro Supplemental Content" do
  app "FCPContent"
  volumes_dir "FCPContent"
  dmg_name "FCPContent-1.0"
  source "http://ims-chef.wesleyan.edu/os_x/apple_final_cut_pro/FCPContent-1.0.dmg"
  checksum "a68df0eafac96d2a6ae52fe7b08fb587e6c7216afe64c05210fcec01a0eb78a5"
  action :install
  type "pkg"
  package_id "com.apple.pkg.FCPContent"
end

# Install QT Codecs
dmg_package "QuickTime Pro Codecs" do
  app "ProAppsQTCodecs"
  volumes_dir "ProAppsQTCodecs 1.0.2"
  dmg_name "ProAppsQTCodecs1.0.2.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/apple_final_cut_pro/ProAppsQTCodecs1.0.2.dmg"
  checksum "76f88ebba783c3679942b666182d5784e7962a66ef1f5aae99aa5e58c99f1a55"
  action :install
  type "pkg"
  package_id "com.apple.pkg.ProAppsQTCodecs"
  version "1.0.2"
end