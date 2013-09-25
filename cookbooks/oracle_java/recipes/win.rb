#
# Cookbook Name:: java
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Installs Java 7 runtime for 32-bit browsers, have not decided a support plan for 64-bit browsers yet.
windows_package "Oracle Java Runtime" do
  source "http://ims-chef.wesleyan.edu/windows/oracle_java/jre-7u40-windows-i586.exe"
  checksum "d8421c3619dfa7a362d0475781f0e5c7c170019b3ac4c329827251981c2d03da"
  installer_type :wise
  version "7.0.40"
end