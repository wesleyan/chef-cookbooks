#
# Cookbook Name:: ncsu_bioedit
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file "Download NCSU BioEdit" do
	source 'http://ims-chef.wesleyan.edu/windows/ncsu_bioedit/BioEdit.zip'
	path 'C:\TEMP\BioEdit.zip'
	checksum 'b5a7096c3951fac574eed259af60989841cb99ede6264cc8b8dd880e7b3b35aa'
	backup false
end

execute "Expand NCSU BioEdit" do
	command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\BioEdit.zip" -y -o"C:\TEMP"'
end

windows_package 'NCSU BioEdit' do
	source 'C:\TEMP\bioedit\BioEdit.msi'
	version '7.2.3'
end