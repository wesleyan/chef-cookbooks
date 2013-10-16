#
# Cookbook Name:: envi_idl
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "ENVI IDL" do
	source 'http://ims-chef.wesleyan.edu/windows/envi_idl/envi50sp3win64_setup.exe'
	checksum '53b9754f2d9eb24e4bf5476c50dd9b7391f7faba0a57df7e650197d215b55a31'
	version '5.0.3'
end