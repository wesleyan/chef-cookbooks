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
  volumes_dir "Java for OS X 2013-004"
  dmg_name "JavaForOSX2013-004"
  source "http://ims-chef.wesleyan.edu/os_x/apple_java/JavaForOSX2013-004.dmg"
  checksum "b10cac904a28be56b898563756caa99c2d484da605d2f7aa12547a4850b4fda5"
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
  version "2013.4.0"
end

# Installs Java 7 web plug-in for browsers
dmg_package "Oracle Java" do
  app "Java 7 Update 25"
  volumes_dir "Java 7 Update 25"
  dmg_name "jre-7u25-macosx-x64"
  source "http://ims-chef.wesleyan.edu/os_x/oracle_java/jre-7u25-macosx-x64.dmg"
  checksum "b89996e10f833187d56cd7a740934dbca8232a7337e0250163f82039bacf7324"
  action :install
  type "pkg"
  package_id "com.oracle.jre"
  version "7.0.25"
end

cookbook_file "/Library/Application Support/Oracle/Java/Enabled.plist" do
  mode 0664
end