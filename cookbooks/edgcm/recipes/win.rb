#
# Cookbook Name:: edgcm
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Silent installer doesn't work at all, it unzips easily enough
# but we also need to capture the serial

windows_package 'EdGCM' do
	source 'http://ims-chef.wesleyan.edu/windows/edgcm/EdGCM_3.2_b926.exe'
	checksum '25767ef406b26c1f38ea3a36b6cc9a4b0913e67857da7254b692eea927281659'
	version '3.2.926'	
end