#
# Cookbook Name:: sas_institute_jmp
# Recipe:: win
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Pull down our installer
remote_file "Download SAS JMP" do
  source "http://ims-chef.wesleyan.edu/windows/sas_institute_jmp/JMP-11.zip"
  path 'C:\TEMP\JMP-11.zip'
  checksum "023d216333c62492d9df1eef17041b7a6fae057d6aded19b3c2c65f6fda04bae"
  backup false
end

# Extract our installer
execute "Extract JMP" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\JMP.zip\" -y -o\"C:\\TEMP"
  action :run
end

# Install!
windows_package "SAS JMP" do
  source 'C:\TEMP\JMP\setup.exe'
  installer_type :custom
  options '/s /v"qn"'
  version "11.0.0"
end

# Insert JMP license file
cookbook_file 'winJMP.per' do
  path 'C:\Program Files\SAS\JMP\11\JMP.per'
  backup false
end
