#
# Cookbook Name:: autodesk_maya
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file "Data File" do
	source "http://ims-chef.wesleyan.edu/windows/autodesk_maya/Data1.cab"
	path "#{Chef::Config[:file_cache_path]}/Data1.cab"
	backup false
end

windows_package "Autodesk Maya" do
	source "http://ims-chef.wesleyan.edu/windows/autodesk_maya/maya-5.0.1.msi"
	checksum "2f96364743f25d9f8f08b9dcd0a066e09f420368935fb9e11e5cf52eb44b0816"
	version "5.0.1"
end

