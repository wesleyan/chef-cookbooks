#
# Cookbook Name:: rats_winrats
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file 'Download WinRats (zipped)' do
	source 'http://ims-chef.wesleyan.edu/windows/rats_winrats/WinRats.zip'
	path 'C:\TEMP\WinRats.zip'
	checksum 'ebef95143e74d1e0ac665346aebd57aa09de4a3cb2d3d9b3872bcccef0ef1450'
end

execute "Extract WinRats" do
	command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\WinRats.zip" -y -o"C:\TEMP"'
end

windows_package "Rats WinRats" do
	source 'C:\TEMP\WinRats\WinRATS 7.00.msi'
	version '7.0.0'
end

# Seems to work without knowing the serial number. If it complains, the
# serial is WEA847, and we can key it if there is a problem.