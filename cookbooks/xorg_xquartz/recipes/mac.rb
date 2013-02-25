#
# Cookbook Name:: xorg_xquartz
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "XQuartz-2.7.4.dmg" do
  app "XQuartz"
  volumes_dir "XQuartz-2.7.4"
  dmg_name "XQuartz-2.7.4"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/xorg_xquartz/XQuartz-2.7.4.dmg"
  checksum "3f7c156fc4b13e3f0d0e44523ef2bd3cf7ea736126616dd2da28abb31840923c"
  action :install
  type "pkg"
  package_id "org.macosforge.xquartz.pkg"
end

execute "symlink x11" do
  command "ln -s /Applications/Utilities/XQuartz.app /Applications/Utilities/X11.app"
  not_if { File.exist?("/Applications/Utilities/X11.app") }
end
