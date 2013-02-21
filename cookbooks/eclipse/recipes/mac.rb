#
# Cookbook Name:: eclipse
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "eclipse-SDK-4.2.1-macosx-cocoa-x86_64.dmg" do
  app "Eclipse"
  volumes_dir "Eclipse"
  dmg_name "eclipse-SDK-4.2.1-macosx-cocoa-x86_64"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/eclipse/eclipse-SDK-4.2.1-macosx-cocoa-x86_64.dmg"
  checksum "f14ff4cfc8a7e788d3905afeb46e392639dc4074a87b1e060b13531b09cc4470"
  action :install
  type "dir"
end