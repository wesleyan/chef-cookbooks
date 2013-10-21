#
# Cookbook Name:: sassafras_k2
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "Sassafras K2" do
  source "http://ims-chef.wesleyan.edu/windows/sassafras_k2/K2Client.exe"
  checksum "b71251adc719e664a9fd4c3475ab5893de07a95bc3002ca00c5560c86bc0a5ed"
  version "7.1.04"
  installer_type :custom
end
