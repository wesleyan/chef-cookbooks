#
# Cookbook Name:: muthen_mplus
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
windows_package "Muthen MPlus" do
  source "http://ims-chef.wesleyan.edu/windows/muthen_mplus/mplus-7.11-x64.msi"
  checksum "73e37ee4e3d672588b7423abd22795aac931cee64afeee9286742d34900244b9"
  version "7.11.0"
end