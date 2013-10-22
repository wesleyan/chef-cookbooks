#
# Cookbook Name:: cisco_jabber_video
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file "Download Jabber Video" do
  source "http://ims-chef.wesleyan.edu/windows/cisco_jabber_video/Jabber.zip"
  path 'C:\TEMP\Jabber.zip'
  checksum 'a47535477b3d061a78bbb64a8611dcd40d03123a6f8d16cfcad8d1e3eb30a579'
end

execute "Expand Jabber" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\Jabber.zip\" -y -o\"C:\\TEMP\""
end

windows_package "Cisco Jabber Video" do
  source 'C:\TEMP\JabberVideoSetup4.6.exe'
  version "4.6.0"
  installer_type :custom
  options '/s /v"/qn"'
end

