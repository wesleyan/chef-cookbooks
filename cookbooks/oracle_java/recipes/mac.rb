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
  volumes_dir "Java for OS X 2013-003"
  dmg_name "JavaForOSX2013-003"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_java/JavaForOSX2013-003.dmg"
  checksum "193daf9d16ba753cb7b9160e3b3842e515575a07ac2ec06d27c21a40c30c917b"
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
  version "2013.3.0"
end

# Installs Java 7 web plug-in for browsers
dmg_package "Oracle Java" do
  app "Java 7 Update 21"
  volumes_dir "Java 7 Update 21"
  dmg_name "jre-7u21-macosx-x64"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/oracle_java/jre-7u21-macosx-x64.dmg"
  checksum "57542be9b967cf1deedde4f38ef40b93f0d679d5dde6f7b2e4ec49e5be649a5c"
  action :install
  type "pkg"
  package_id "com.oracle.jre"
  version "7.0.21"
end

cookbook_file "/Library/Application Support/Oracle/Java/Enabled.plist" do
  mode 0664
end