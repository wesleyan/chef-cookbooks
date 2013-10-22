#
# Cookbook Name:: winedt
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "WinEDT" do
	source 'http://ims-chef.wesleyan.edu/windows/winedt/winedt80-64.exe'
	checksum '719392799abd16f2bc373e2e7e4c1ee4de33af083aa13c5fc74839adc88638ce'
	version '8.0.0'
end
