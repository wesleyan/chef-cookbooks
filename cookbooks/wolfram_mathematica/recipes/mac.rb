#
# Cookbook Name:: wolfram_mathematica
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base .app file
dmg_package "Wolfram Mathematica" do
  app "Mathematica"
  volumes_dir "Mathematica"
  dmg_name "Mathematica_9.0.1_OSX_Universal"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/wolfram_mathematica/Mathematica_9.0.1_OSX_Universal.dmg"
  checksum "6f1928d7e50ffdd2bf0ac3984449129f5b9215b14bcf4a10e38f64748db2a3f6"
  action :install
  type "app"
  package_id "com.wolfram.mathematica.app"
  version "9.0.1"
end

# Install Browser & Spotlight plugin
dmg_package "Wolfram Mathematica Extras" do
  app "Extras"
  volumes_dir "Mathematica"
  dmg_name "Mathematica_9.0.1_OSX_Universal"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/wolfram_mathematica/Mathematica_9.0.1_OSX_Universal.dmg"
  checksum "6f1928d7e50ffdd2bf0ac3984449129f5b9215b14bcf4a10e38f64748db2a3f6"
  action :install
  type "pkg"
  package_id "com.wolfram.mathematica.player.plugin.MathematicaPlayerPlugin.pkg"
end

# Insert license file into default user profile
cookbook_file "Wolfram Mathematica License" do
  path "/System/Library/User Template/English.lproj/Library/Preferences/Mathematica/Licensing/mathpass"
  source "mathpass"
  mode 0644
  :create
end