#
# Cookbook Name:: sas_sas
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file "Download SAS sas" do
  source "http://ims-chef.wesleyan.edu/windows/sas_sas/SAS.zip"
  path 'C:\TEMP\SAS.zip'
  backup false
end

execute "expand sas" do
  command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\SAS.zip" -y -o"C:\TEMP'
end

cookbook_file 'C:\TEMP\sdwresponse.properties'

windows_package "SAS SAS" do
  source 'C:\TEMP\sas\setup.exe'
  installer_type :custom
  options '-quiet -wait -responsefile "C:\TEMP\sdwresponse.properties"'
  version "11.0.0"
end
