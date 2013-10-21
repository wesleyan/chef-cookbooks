#
# Cookbook Name:: sas_jmp
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file "Download SAS JMP" do
  source "http://ims-chef.wesleyan.edu/windows/sas_jmp/JMP.zip"
  path 'C:\TEMP\JMP.zip'
  checksum "cf5f8048e6367d980f8ca29adccef4f718e7a1be28d00c3e6053229bffa02dca"
  backup false
end

execute "expand jmp" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\JMP.zip\" -y -o\"C:\\TEMP"
  action :run
end

windows_package "SAS JMP" do
  source 'C:\TEMP\JMP\setup.exe'
  installer_type :custom
  options '/s /v"qn"'
  version "10.0.0"
end

# Insert JMP license file
cookbook_file 'C:\Program Files\SAS\JMP\10\JMP.per'
