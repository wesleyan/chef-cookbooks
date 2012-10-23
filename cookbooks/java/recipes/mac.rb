#
# Cookbook Name:: java
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Installs system-level Java 6 Runtime for applications
dmg_package "JavaForOSX2012-006" do
  app "JavaForOSX"
  volumes_dir "Java for OS X 2012-006"
  dmg_name "JavaForOSX2012-006"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_java-2012/JavaForOSX2012-006.dmg"
  checksum "7c878d0830d9c51385bf87642fca641b624f3eb5e5b41e039bc1bf86cb50c1e4"
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
end

# Installs Java 7 web plugin for Browsers
dmg_package "jre-7u9-macosx-x64.dmg" do
  app "Java 7 Update 09"
  volumes_dir "Java 7 Update 09"
  dmg_name "jre-7u9-macosx-x64"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/oracle_java-7/jre-7u9-macosx-x64.dmg"
  checksum "39aceacaf7739ba2f34073d2e8d2884e34bbef7d9206810305ba13633a5ced82"
  action :install
  type "pkg"
  package_id "com.oracle.jre"
end