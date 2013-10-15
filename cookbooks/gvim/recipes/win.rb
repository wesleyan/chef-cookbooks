#
# Cookbook Name:: gvim
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "GVim" do
	source "http://ims-chef.wesleyan.edu/windows/gvim/gvim-7-4-50.exe"
	checksum "7375e5db297526966d4bd0dc969a3972009b0bd770ce0a7bb85c99beb45104dc"
	version "7.4.50"
end