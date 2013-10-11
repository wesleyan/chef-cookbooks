#
# Cookbook Name:: origin
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Need MSI installer for silent installation
windows_package "Origin" do
	source "http://ims-chef.wesleyan.edu/windows/origin/"
	checksum ""
	version "9.0.0"
end