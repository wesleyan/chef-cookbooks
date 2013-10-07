#
# Cookbook Name:: ibm_spss
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "IBM SPSS" do
	source "http://ims-chef.wesleyan.edu/windows/ibm_spss/SPSS_Statistics_21_win64.exe"
	checksum "3cca741724a5aa1f4509429d707baf6738200d168e6a566105c1dbc37f8d9cb9"
	version "21.0.0"
end
