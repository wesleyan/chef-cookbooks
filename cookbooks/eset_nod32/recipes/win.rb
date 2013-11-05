#
# Cookbook Name:: eset_nod32
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our pre-configured package
windows_package "ESET NOD32" do
  source "http://ims-chef.wesleyan.edu/windows/eset_nod32/Wesleyan_configured_64bit_installer.exe"
  checksum "138d5650b32d23ad1ecfc902ee69d0d8a0e36bacd8dc6c68a7dc7cdea2f47be8"
  installer_type :custom
  options "/quiet /norestart"
  version "5.0.0"
end
