#
# Cookbook Name:: designscience_mathtype
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file 'Download DesignScience MathType' do
  source "http://ims-chef.wesleyan.edu/windows/designscience_mathtype/MathType.zip"
  path 'C:\TEMP\MathType.zip'
  backup false
  checksum "baf82a8cf592ea41a8af053daf5e4f6008587c7e1bb2531b1e6b148c34029989"
end

execute "Expand MathType" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\MathType.zip\" -y -o\"C:\\TEMP"
  action :run
end

windows_package "DesignScience MathType" do
  source 'C:\TEMP\MTW6.0c\setup.exe'
  installer_type :custom
  options '-Q -D "C:\Program files\MathType"'
  version "6.0.0"
end
