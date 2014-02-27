#
# Cookbook Name:: haskell_ghc
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# GLUT is a dependency for GHC that will cause a prompt to appear
# if not pre-installed

remote_file "GLUT" do
	source "http://ims-chef.wesleyan.edu/windows/haskell_ghc/glut32.dll"
	path 'C:\Windows\System\glut32.dll'
	checksum "722b8d2c4912ab640fc766424fe1bffd45a0e735293ac2d763eb4031684bb468"
	backup false
end

windows_package "Haskell GHC" do
	source "http://ims-chef.wesleyan.edu/windows/haskell_ghc/HaskellPlatform-2013.2.0.0-setup.exe"
	checksum "1d835835e71d71b1cb8dc6db6f94c6460ffc63d4e86d3a58062ebd1e21420a2d"
	version "2013.2.0"
end
