#
# Cookbook Name:: apple_quicktime_pro
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "Apple QuickTime Pro" do
	source "http://ims-chef.wesleyan.edu/windows/apple_quicktime_pro/QuickTime.msi"
	checksum '79f2a32bfb1aa10a61f1ea72fef759b8c70d87b896e83112de122ab80650c418'
	version "7.7.4"
end

windows_package "Apple Application Support" do
	source "http://ims-chef.wesleyan.edu/windows/apple_quicktime_pro/AppleApplicationSupport.msi"
	checksum "097cd4dadb3115e85445c819116b99f898e0ddfcee8c1fd6bff5b809fbbb57cf"
	version "7.7.4"
end

directory 'C:\ProgramData\Apple Computer\QuickTime'

remote_file "QuickTime Pro License File" do
	source "http://ims-chef.wesleyan.edu/windows/apple_quicktime_pro/com.apple.QuickTime.plist"
	path 'C:\ProgramData\Apple Computer\QuickTime\com.apple.QuickTime.plist'
	checksum '3fd456eb0643c2955f5cc2c2e9670ffef6489f6ad7d4db450acaca4f7ab53741'
	backup false
end