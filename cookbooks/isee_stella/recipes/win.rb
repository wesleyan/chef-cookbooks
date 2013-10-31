#
# Cookbook Name:: isee_stella
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file 'Download STELLA Installer' do
	source 'http://ims-chef.wesleyan.edu/windows/isee_stella/STELLA_9.1.4_Installer.exe'
	path 'C:\TEMP\STELLA_9.1.4_Installer.exe'
	checksum '692862de88cd7f272ea7ac9804f43a29b1a0280d165c72f295dc1fa4048d7ed1'
end

cookbook_file 'C:\TEMP\setup.iss'

# Install our package
windows_package "ISee STELLA" do
	source 'C:\TEMP\STELLA_9.1.4_Installer.exe'
	installer_type :custom
	options '/s /sms /f1"C:\TEMP\setup.iss"'
	version '9.1.4'
end

cookbook_file 'C:\Program Files (x86)\isee systems\STELLA 9.1.4\STELLA.exe'
cookbook_file 'C:\Program Files (x86)\isee systems\STELLA 9.1.4\stella.ini'
cookbook_file 'C:\Program Files (x86)\isee systems\STELLA 9.1.4\STELLA.rsr'