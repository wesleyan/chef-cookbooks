#
# Cookbook Name:: phylip
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file 'Download phylip' do
	source 'http://ims-chef.wesleyan.edu/windows/phylip/phylip-3.695.zip'
	path 'C:\TEMP\phylip-3.695.zip'
	checksum 'cc8ec4fcfc6b72271c47f889ed32863615e52a502b6e6f405f493aa05eb33a45'
	backup false
end

execute "Expand phylip" do
	command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\phylip-3.695.zip" -y -o"C:\Program Files (x86)"'
end

windows_path 'C:\Program Files (x86)\phylip\exe'