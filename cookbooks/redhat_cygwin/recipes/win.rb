#
# Cookbook Name:: redhat_cygwin
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "Cygwin" do
	source "http://ims-chef.wesleyan.edu/windows/redhat_cygwin/setup-x86_64.exe"
	checksum "afd328fd3304429ea7b6b937413bbb06f5e4635af26230c734357645f991348a"
	installer_type :custom
	options "-C X11 -D -d -q -s \"http://cygwin.mirror.constant.com\""
	version "1.7.25"
end