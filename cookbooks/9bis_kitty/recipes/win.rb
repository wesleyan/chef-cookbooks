#
# Cookbook Name:: 9bis_kitty
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Directories must be created manually due to CHEF-3787

ruby_block 'KiTTY Directories' do
	block do
		::Dir.mkdir 'C:\Program Files (x86)\KiTTY' unless ::Dir.exists? 'C:\Program Files (x86)\KiTTY'
		::Dir.mkdir 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\KiTTY' unless ::Dir.exists? 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\KiTTY'
	end
end

remote_file "KiTTY" do
	source "http://ims-chef.wesleyan.edu/windows/9bis_kitty/kitty.exe"
	path "C:\\Program Files (x86)\\KiTTY\\kitty.exe"
	checksum "378d5fa314ee6e10f6071dd5cb37686bb4224d1c10e6577e97d72eb254a5da63"
	backup false
end

windows_shortcut "Add KiTTY to Start Menu" do
	name 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\KiTTY\KiTTY.lnk'
	description "Launches KiTTY, an SSH/Telnet Agent for Windows"
	cwd 'C:\Program Files (x86)\KiTTY\\'
	target 'kitty.exe'
end