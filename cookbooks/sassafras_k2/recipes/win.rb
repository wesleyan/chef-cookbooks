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
  checksum "40132cb47f7f43a5be27fdf735be89d2c109d8e9c9e0c3280e2941214965729a"
  version "7.1.04"
  installer_type :custom
end
