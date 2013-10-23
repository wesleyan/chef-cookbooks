#
# Cookbook Name:: yale_neuron
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package 'Yale Neuron' do
	source 'http://ims-chef.wesleyan.edu/windows/yale_neuron/nrn-7.3.x86_64-w64-mingw32-setup.exe'
	checksum '2f6bcde446c0b9dc7efd85e6f92027b1174308eb7269db192eed192c93286f08'
	version '7.3.0'
end