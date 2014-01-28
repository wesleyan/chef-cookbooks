#
# Cookbook Name:: oracle_java
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Installs system-level Java 6 Runtime for applications, disables Java 6 web plug-in
dmg_package "Apple Java" do
  app "JavaForOSX"
  volumes_dir "Java for OS X 2013-005"
  dmg_name "JavaForOSX2013-005"
  source "http://ims-chef.wesleyan.edu/os_x/apple_java/JavaForOSX2013-005.dmg"
  checksum "81e1155e44b2c606db78487ca1a02e31dbb3cfbf7e0581a4de3ded9e635a704e"
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
  version "2013.5.0"
end

# Installs Java 7 web plug-in for browsers
dmg_package "Oracle Java" do
  app "Java 7 Update 51"
  volumes_dir "Java 7 Update 51"
  dmg_name "jre-7u51-macosx-x64"
  source "http://ims-chef.wesleyan.edu/os_x/oracle_java/jre-7u51-macosx-x64.dmg"
  checksum "8541090bf8bd7b284f07d4b1f74b5352b8addf5e0274eeb82cacdc4b2e2b66d2"
  action :install
  type "pkg"
  package_id "com.oracle.jre"
  version "7.0.51"
end

# Enable Java in Safari by default.
cookbook_file "/Library/Application Support/Oracle/Java/Enabled.plist" do
  mode 0664
end