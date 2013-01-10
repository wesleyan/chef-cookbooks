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
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_java/JavaForOSX2012-006.dmg"
  checksum "6d947f4a20e8f7ee35bb460675ad0b930f8acc15ee0b0dbfc791a7a02abed6c0"
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
end

# Installs Java 7 web plugin for Browsers
dmg_package "jre-7u10-macosx-x64.dmg" do
  app "Java 7 Update 10"
  volumes_dir "Java 7 Update 10"
  dmg_name "jre-7u10-macosx-x64"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/oracle_java/jre-7u10-macosx-x64.dmg"
  checksum "1dbfc35fc8a7e9f1a9c1840baf9e0bc81b0f3b8ac2fe75745aa44d58821e580f"
  action :install
  type "pkg"
  package_id "com.oracle.jre"
end