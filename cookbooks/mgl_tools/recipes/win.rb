#
# Cookbook Name:: mgl_tools
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package 'MGL Tools' do
	source 'http://ims-chef.wesleyan.edu/windows/mgl_tools/mgltools_win32_1.5.6_Setup.exe'
	checksum '179a4bff0ab574366750f31bcc054728ab7beb4118a0e119f4f58e40be436ef0'
	installer_type :custom
	options "/S"
	version '1.5.6'
end