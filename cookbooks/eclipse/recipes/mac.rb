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
  volumes_dir "eclipse"
  dmg_name "eclipse-SDK-4.2.1-macosx-cocoa-x86_64"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/eclipse-4/eclipse-SDK-4.2.1-macosx-cocoa-x86_64.dmg"
  checksum "26a364738b517fbcdd6b404668683625154807cfd2b373b0430b1c8c7b74cfc3"
  action :install
  type "dir"
end