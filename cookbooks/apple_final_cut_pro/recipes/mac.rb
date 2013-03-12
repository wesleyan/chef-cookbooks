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
  dmg_name "finalcutpro-10.0.7"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_final_cut_pro/finalcutpro-10.0.7.dmg"
  checksum "d002712d4f9d9283c718fab8260f6a3350950ca6c6a7a82ed16881206bd045c6"
  action :install
  type "app"
  package_id "com.apple.pkg.FinalCut"
  version "10.0.7"
end

# Install Supplemental content
dmg_package "Final Cut Pro Supplemental Content" do
  app "FCPContent"
  volumes_dir "FCPContent"
  dmg_name "FCPContent-1.0"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_final_cut_pro/FCPContent-1.0.dmg"
  checksum "a68df0eafac96d2a6ae52fe7b08fb587e6c7216afe64c05210fcec01a0eb78a5"
  action :install
  type "app"
  package_id "com.apple.pkg.FCPContent"
end

# Install QT Codecs
dmg_package "QuickTime Pro Codecs" do
  app "ProAppsQTCodecs"
  volumes_dir "ProAppsQTCodecs"
  dmg_name "ProAppsQTCodecs-1.0"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_final_cut_pro/ProAppsQTCodecs-1.0.dmg"
  checksum "a821012be80d35d6871dac99dc3f2cf4a76fbe5466182287b492956c34347ef2"
  action :install
  type "app"
  package_id "com.apple.pkg.ProAppsQTCodecs"
end