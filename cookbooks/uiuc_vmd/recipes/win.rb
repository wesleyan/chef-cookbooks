#
# Cookbook Name:: uiuc_vmd
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "VMD" do
	source "http://ims-chef.wesleyan.edu/windows/uiuc_vmd/vmd191win32cuda.msi"
	checksum "c50f48959ceb5e569080a523e155fd472d5c4bf90e2650bb4a2574919a5a8d35"
	version "1.9.1"
end