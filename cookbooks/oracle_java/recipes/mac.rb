#
# Cookbook Name:: java
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Installs system-level Java 6 Runtime for applications, disables Java 6 web plug-in
dmg_package "JavaForOSX2013-001" do
  app "JavaForOSX"
  volumes_dir "Java for OS X 2013-001"
  dmg_name "JavaForOSX2013-001"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_java/JavaForOSX2013-001.dmg"
  checksum "5c6f709b747a9c067580accf260a18cadba13ad16203adf8238929b5b2869f8b"
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
end

# Installs Java 7 web plug-in for browsers
dmg_package "jre-7u15-macosx-x64.dmg" do
  app "Java 7 Update 15"
  volumes_dir "Java 7 Update 15"
  dmg_name "jre-7u15-macosx-x64"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/oracle_java/jre-7u15-macosx-x64.dmg"
  checksum "62be342a4ed754f14fad58dbe2ed22820971f271840beb685e232631293c8e96"
  action :install
  type "pkg"
  package_id "com.oracle.jre"
end