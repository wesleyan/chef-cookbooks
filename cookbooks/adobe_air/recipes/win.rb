#
# Cookbook Name:: adobe_air
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file "Download Adobe AIR" do
  source 'http://ims-chef.wesleyan.edu/windows/adobe_air/AdobeAIR.zip'
  path 'C:\TEMP\AdobeAIR.zip'
  checksum '0ae08056227e9773bca0f8d051bf0e0ee4c597cd0231f3d87cfeaca272e76bb2'
  backup false
end

execute "Expand Adobe AIR" do
  command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\AdobeAIR.zip" -y -o"C:\TEMP"'
end

windows_package "Adobe AIR" do
  source 'C:\TEMP\AdobeAIRInstaller\setup.msi'
  version "3.9.0"
end