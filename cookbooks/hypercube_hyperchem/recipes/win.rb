#
# Cookbook Name:: hypercube_hyperchem
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file "Download HyperChem" do
	source "http://ims-chef.wesleyan.edu/windows/hypercube_hyperchem/HyperChem.zip"
	backup false
	checksum "73c1962901ab067b94e6635ffafd6eb06270782f504edb79f77000edf8117961"
	path 'C:\TEMP\HyperChem.zip'
end

execute "Expand HyperChem" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\HyperChem.zip\" -y -o\"C:\\TEMP\""
  action :run
end

# Install our package
windows_package "HyperCube HyperChem" do
	source "C:\\TEMP\\Hyper75\\setup.exe"
	version "7.5.0"
end

execute "Set License Server" do
	command "setx LSFORCEHOST fozzy.wesleyan.edu"
end