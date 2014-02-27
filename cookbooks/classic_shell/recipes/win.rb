#
# Cookbook Name:: classic_shell
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package 'Classic Shell' do
	source 'http://ims-chef.wesleyan.edu/windows/classic_shell/ClassicShellSetup_4_0_2.exe'
	checksum '79015ab8c92c29d30903ff3cec9687afa151fcfd4d089c47f0fb0ca3c54f8c6d'
	version '4.0.2'
	installer_type :custom
	options "/qn ADDLOCAL=ClassicStartMenu"
end