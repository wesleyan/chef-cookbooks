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
  source "http://ims-chef.wesleyan.edu/os_x/simulation_curriculum_starry_night_pro/starry_night_pro-6.4.3.dmg"
  checksum "8d1f38c84f7ef01a4f1e5fceb5be0ff8ee709a3149ef78369b7b7c23930b6ae7"
  action :install
  type "pkg"
  package_id "com.starrynight.StarryNightPro6.pkg"
end


directory "/System/Library/User Template/English.lproj/Library/Preferences/Imaginova Canada"
directory "/System/Library/User Template/English.lproj/Library/Preferences/Imaginova Canada/Prefs"
directory "/System/Library/User Template/English.lproj/Library/Preferences/Imaginova Canada/Prefs/Pro"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/Imaginova Canada/Prefs/Pro/Prefs.txt" do
  mode 0644
end

# Create dock folder, if it does not exist
dock_add "Natural Sciences and Mathematics" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/Starry Night Pro 6.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
