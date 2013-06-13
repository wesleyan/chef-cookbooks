#
# Cookbook Name:: nextengine_scanstudio
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "NextEngine 3D Scanner Driver" do
	source "http://ims-chef.wesleyan.edu/windows/nextengine_scanstudio/3d_scanner_driver.exe"
	version "10.10.0"
end

windows_package "NextEngine ScanStudio HD"  do
	source "http://ims-chef.wesleyan.edu/windows/nextengine_scanstudio/ScanStudioHD_1.3.2.exe"
	version "1.3.2"
	installer_type :nsis
end