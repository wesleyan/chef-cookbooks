#
# Cookbook Name:: swi_prolog
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package 'SWI Prolog' do
	source 'http://ims-chef.wesleyan.edu/windows/swi_prolog/w64pl641.exe'
	checksum 'ea6617d8d36d5d730a1889ad406fdc6d141f242620bbf623290f3c4fcd4a7426'
	version '6.4.1'
end
