#
# Cookbook Name:: ucsf_chimera
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "UCSF Chimera" do
	source 'http://ims-chef.wesleyan.edu/windows/ucsf_chimera/chimera-1.8-win64.exe'
	checksum '5c1a633fd383e0001e008149a1fa2a7f2eebef7b3550fecdc93541c0402ec098'
	version '1.8.0'
end
