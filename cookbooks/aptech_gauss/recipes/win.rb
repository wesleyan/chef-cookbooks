#
# Cookbook Name:: aptech_gauss
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "Aptech Gauss" do
	source "http://ims-chef.wesleyan.edu/windows/aptech_gauss/GAUSS_12_Win_64.msi"
	checksum "077dec7c58d0c7e900e65dd6cabe989cd0bac60597976d34269ac2db410d0521"
	version '12.0.0'
end

file 'C:\gauss12\temporary.lic' do
	action :delete
end

cookbook_file 'C:\gauss12\client.lic'

ruby_block 'KiTTY Directories' do
	block do
		::Dir.mkdir 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Gauss' unless ::Dir.exists? 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Gauss'
	end
end

windows_shortcut "Add Gauss to Start Menu" do
	name 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Gauss\Gauss.lnk'
	description "Launches Gauss"
	cwd 'C:\gauss12\\'
	target 'C:\gauss12\gauss.exe'
end