#
# Cookbook Name:: java
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "JavaForOSX2012-005" do
  app "JavaForOSX"
  volumes_dir "Java for OS X 2012-005"
  dmg_name "JavaForOSX2012-005"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_java-2012/JavaForOSX2012-005.dmg"
  checksum "7c878d0830d9c51385bf87642fca641b624f3eb5e5b41e039bc1bf86cb50c1e4"
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
end
