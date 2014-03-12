#
# Cookbook Name:: trimble_sketchup
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file 'Download SketchUp Installer' do
	source 'http://ims-chef.wesleyan.edu/windows/trimble_sketchup/SketchUp2013.msi'
	path 'C:\TEMP\SketchUp2013.msi'
	checksum '1c3caf62e9bb08606c33ecc45bb7b6d94b8287dbe2478e1883d5c36b2c55b44f'
	backup false
end

remote_file 'Download SketchUp Transform MST' do
	source 'http://ims-chef.wesleyan.edu/windows/trimble_sketchup/SketchUp2013.mst'
	path 'C:\TEMP\SketchUp2013.mst'
	checksum '8c6ee2d953b4012b2f8444700bcd6d337683a291438246531f136f8839b5a86f'
	backup false
end

remote_file 'Download SketchUp Transform LF' do
	source 'http://ims-chef.wesleyan.edu/windows/trimble_sketchup/SketchUp13.lf'
	path 'C:\TEMP\SketchUp13.lf'
    checksum '28a851e16b1b6331d4d9caa5e23d99a45afb936ec89000f0c014001f63177659'
    backup false
end

windows_package 'Trimble SketchUp Make' do
  source 'C:\TEMP\SketchUp2013.msi'
  options 'TRANSFORMS="C:\TEMP\SketchUp2013.mst"'
  version '2013.0.0'
end