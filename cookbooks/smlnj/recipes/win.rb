#
# Cookbook Name:: smlnj
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "SMLNJ" do
	source "http://ims-chef.wesleyan.edu/windows/smlnj/smlnj.msi"
	checksum "0c3167c3da15a0263fa58f58f00463fcc93d61a4bc236b0f963a3ec8909bcf7d"
	version "110.76.0"
end