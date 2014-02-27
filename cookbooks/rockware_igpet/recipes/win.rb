#
# Cookbook Name:: rockware_igpet
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file 'Download Rockware IgPet' do
	source 'http://ims-chef.wesleyan.edu/windows/rockware_igpet/SetupIgpet2012.exe'
	path 'C:\TEMP\SetupIgpet2012.exe'
	checksum '18207e4ad052cbcb9cd431071a3db84bc95754592e8f00dec6beb7c19f90ae12'
	backup false
end

remote_file 'Download Rockware IgPet License' do
	source 'http://ims-chef.wesleyan.edu/windows/rockware_igpet/license.txt'
	path 'C:\TEMP\license.txt'
	checksum '930f0a7aa6320ae9dbbc0c87b3292df63d07244d2e46af4799f3fbfb7ea8e896'
	backup false
end

windows_package 'Rockware IgPet' do
  source 'C:\TEMP\SetupIgpet2012.exe'
  version '2012.0.0'
end