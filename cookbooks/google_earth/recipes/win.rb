#
# Cookbook Name:: google_earth
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file "Download Google Earth" do
  source "http://ims-chef.wesleyan.edu/windows/google_earth/GoogleEarth.zip"
  path 'C:\TEMP\GoogleEarth.zip'
  checksum "3f173c38e5014021301001b4f6f1725c71a156aa8c3e125e738507afbcf2addd"
end

execute "Expand Google Earth" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\GoogleEarth.zip\" -y -o\"C:\\TEMP\""
  action :run
end

windows_package "Google Earth" do  
  source 'C:\TEMP\google_earth\Google Earth.msi'
  version "7.1.11871"
end
