#
# Cookbook Name:: java
# Recipe:: win
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Installs Java 7 runtime for 32-bit browsers, have not decided a support plan for 64-bit browsers yet.
windows_package "Oracle Java Runtime" do
  source "http://ims-chef.wesleyan.edu/windows/oracle_java/jre-7u60-windows-i586.exe"
  checksum "c950aee2f571b957f574b804701fedaf8695cab13c15b27064114339c4a423da"
  installer_type :wise
  version "7.0.60"
end