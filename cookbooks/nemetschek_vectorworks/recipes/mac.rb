#
# Cookbook Name:: nemetschek_vectorworks
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

dmg_package "Vectorworks" do
  options "-q -u 'Information Technology Services' -c 'Wesleyan University' -d '/Applications/Vectorworks2013 -s C8XUST-9ZA37T-WMZFZS-B266DF"
  app "InstallVectorworks.app/Contents/MacOS/InstallVectorworks"
  volumes_dir "Vectorworks"
  source "http://ims-chef.wesleyan.edu/os_x/nemetschek_vectorworks/Vectorworks2013.dmg"
  checksum "bc941131ec7f0d0ebe88c0891dd8e2f78e96f8bd72b574f32f8f99bc0ef57dd1"
  action :install
  type "custom"
  package_id "com.nemetschek.vectorworks"
  version "2013.0.0"
end
