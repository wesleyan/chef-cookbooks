#
# Cookbook Name:: mathworks_matlab
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

cookbook_file 'C:\TEMP\license.dat'

remote_file 'Download Mathworks MATLAB' do
  source "http://ims-chef.wesleyan.edu/windows/mathworks_matlab/matlab_2013a.zip"
  path 'C:\TEMP\MATLAB.zip'
  backup false
  checksum "1ffc488d529ef41dc23f621ffe87a04039d13b33cdbeca1eea7342340ebb2e23"
end

execute "expand matlab" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\MATLAB.zip\" -y -o\"C:\\TEMP"
  action :run
end

windows_package "Mathworks MATLAB" do
  source 'C:\TEMP\matlab_2013a\setup.exe'
  installer_type :custom
  options '-inputFile C:\TEMP\matlab_2013a\installer_input.txt'
  version "9.1.0"
end