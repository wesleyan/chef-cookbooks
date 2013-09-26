#
# Cookbook Name:: ihs_eviews
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "IHS Eviews 8" do
	source "http://ims-chef.wesleyan.edu/windows/ihs_eviews/EViews8x64Installer.exe"
	checksum "e7f99e59771d4ec7ef0b32dfd9d80e1a81a26402ab7db9c54a752029d2f68e89"
	version "8.0.0"
	installer_type :wise
end

windows_package "Eviews Update" do
	source "http://ims-chef.wesleyan.edu/windows/ihs_eviews/EViews8x64Patch_091213.exe"
	checksum "b61d634a18ac67d4561255de17568f3667a90f11ca0bbca845e1881b50f22785"
	version "2013.9.12"
	installer_type :wise
end