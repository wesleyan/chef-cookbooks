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
  source "http://ims-chef.wesleyan.edu/windows/oracle_java/jre-7u45-windows-i586.exe"
  checksum "2b06e1f7c79e2d1b8aaf6469a4140b93e9d7adda13c0c7e6f68a380d8a1dd2e4"
  installer_type :wise
  version "7.0.45"
end