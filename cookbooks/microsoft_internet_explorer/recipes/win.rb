#
# Cookbook Name:: microsoft_internet_explorer
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "Microsoft Internet Explorer" do
	source "http://ims-chef.wesleyan.edu/windows/microsoft_internet_explorer/IE11-Setup-Branding.msi"
	checksum "956a62516b37d3e6f21a3349e966212d569b6ce65f03c9fa1781ad276dd7a5dc"
	version '11.0.0'
end
