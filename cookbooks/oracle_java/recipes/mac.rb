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
dmg_package "jre-7u11-macosx-x64.dmg" do
  app "Java 7 Update 11"
  volumes_dir "Java 7 Update 11"
  dmg_name "jre-7u11-macosx-x64"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/oracle_java/jre-7u11-macosx-x64.dmg"
  checksum "089410645d13b2dd9e6e1551cc7ea0e74d4a26c4f5d50eb7f8a780ff25ac8b71"
  action :install
  type "pkg"
  package_id "com.oracle.jre"
end