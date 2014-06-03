#
# Cookbook Name:: apple_ilife
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install GarageBand
dmg_package "GarageBand" do
  app "GarageBand"
  volumes_dir "GarageBand"
  dmg_name "garageband-10.0.2"
  source "http://sw.wesleyan.edu/os_x/apple_ilife/garageband-10.0.2.dmg"
  checksum "871ad1d8af8b6e3f7fcdfd5183782b341072c52c1a00ea432f600b8fc864092b"
  action :install
  type "pkg"
  package_id "com.apple.pkg.GarageBand_AppStore"
  version "10.0.2"
end

# Install iMovie
dmg_package "iMovie" do
  app "iMovie"
  volumes_dir "iMovie"
  dmg_name "imovie-10.0.3"
  source "http://sw.wesleyan.edu/os_x/apple_ilife/imovie-10.0.3.dmg"
  checksum "205e9d1d93de506395716220dfca8ed35c0f972629d929e9c3bafd175c04d5a1"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iMovie_AppStore"
  version "10.0.3"
end

# Install iPhoto
dmg_package "iPhoto" do
  app "iPhoto"
  volumes_dir "iPhoto"
  dmg_name "iphoto-9.5.1"
  source "http://sw.wesleyan.edu/os_x/apple_ilife/iphoto-9.5.1.dmg"
  checksum "66403b020b74c338ac2894a42d5a473bfe01192c65097ad2bf3499f6ffdb17d0"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iPhoto_AppStore"
  version "9.5.1"
end

# Install latest Digital Camera RAW update
dmg_package "RAW Camera Update" do
  app "RAWCameraUpdate5"
  volumes_dir "Digital Camera RAW Compatibility Update 5.05"
  dmg_name "RAWCameraUpdate5.05"
  source "http://sw.wesleyan.edu/os_x/apple_ilife/RAWCameraUpdate5.05.dmg"
  checksum "6b1bee2ec12cd8ccf7b949ee029ad7b65b5fc65d080024aee7e18697d29b8ead"
  action :install
  type "pkg"
  package_id "com.apple.pkg.RAWCameraUpdate5"
  version "5.0.5"
end

cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.iPhoto.plist"