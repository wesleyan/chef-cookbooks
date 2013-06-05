#
# Cookbook Name:: 7-zip
# Recipe:: default
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "7-Zip" do
  source "http://ims-chef.wesleyan.edu/windows/7z920.msi"
  version "9.20"
end

