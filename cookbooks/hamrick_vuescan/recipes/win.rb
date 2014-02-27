#
# Cookbook Name:: hamrick_vuescan
# Recipe:: win
#
# Copyright 2013, Wesleyan University
# All rights reserved - Do Not Redistribute
#
# Install our package.
windows_package "Hamrick Vuescan" do
	source "http://ims-chef.wesleyan.edu/windows/hamrick_vuescan/vuescan-9.3.09.exe"
	checksum "4611d81d063d7a4410f098355afba9fc3397e01483342fa28b37341638f205e5"
	version "9.3.09"
end

# Need to figure out how to seed license information
