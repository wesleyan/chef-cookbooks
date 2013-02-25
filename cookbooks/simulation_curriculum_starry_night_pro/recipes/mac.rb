#
# Cookbook Name:: simulation_curriculum_starry_night_pro
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "starry_night_pro-6.4.3.dmg" do
  app "Starry Night Pro"
  volumes_dir "Starry Night Pro"
  dmg_name "starry_night_pro-6.4.3"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/simulation_curriculum_starry_night_pro/starry_night_pro-6.4.3.dmg"
  checksum "8d1f38c84f7ef01a4f1e5fceb5be0ff8ee709a3149ef78369b7b7c23930b6ae7"
  action :install
  type "pkg"
  package_id "com.starrynight.StarryNightPro6.pkg"
end