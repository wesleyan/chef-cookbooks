#
# Cookbook Name:: atlasti
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "AtlasTI" do
	source "http://ims-chef.wesleyan.edu/windows/atlasti/a7setup.msi"
	checksum "b97d21eb5210f11bcb887532cf326bcd5ab044de13393fc33c1f1301fac54493"
	version "7.0.0"
end
