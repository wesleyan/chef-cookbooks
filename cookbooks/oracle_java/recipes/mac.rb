#
# Cookbook Name:: java
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Installs system-level Java 6 Runtime for applications, disables Java 6 web plug-in
dmg_package "Apple Java" do
  app "JavaForOSX"
  volumes_dir "Java for OS X 2013-002"
  dmg_name "JavaForOSX2013-002"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_java/JavaForOSX2013-002.dmg"
  checksum "0ac0ab9bd1990add28bb1fa088fb8e59b657a09cbf5fde1c9d38eea8459760cc"
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
  version "2013.2.0"
end

# Installs Java 7 web plug-in for browsers
dmg_package "Oracle Java" do
  app "Java 7 Update 17"
  volumes_dir "Java 7 Update 17"
  dmg_name "jre-7u17-macosx-x64"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/oracle_java/jre-7u17-macosx-x64.dmg"
  checksum "7515f1296b5b9fd48db0cfcb65ccffc218f5d8ec5a6074b2acba38a3230e87be"
  action :install
  type "pkg"
  package_id "com.oracle.jre"
  version "7.0.17"
end