#
# Cookbook Name:: dr_java
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

directory "C:\\DrJava"

remote_file "Dr. Java" do
	source "http://ims-chef.wesleyan.edu/windows/dr_java/drjava-stable-20130901-r5756.exe"
	checksum "68b999b131481da83077238387c9c88fb7a5e748f345873be157387279fbd13d"
	path "C:\\DrJava\\drjava.exe"
	backup false
end

windows_shortcut "Create Dr. Java Shortcut" do
	cwd "C:\\DrJava"
	target "drjava.exe"
	description "Launches Dr. Java"
	name "C:\\Users\\Default\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Dr Java.lnk"
end
 
