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
  source "http://ims-chef.wesleyan.edu/windows/oracle_java/jre-7u51-windows-i586.exe"
  checksum "5f6e2a00e2e720cbe012353bc0c86f9426621ee6ce7c1f47d3181546f1efbbbc"
  installer_type :wise
  version "7.0.51"
end