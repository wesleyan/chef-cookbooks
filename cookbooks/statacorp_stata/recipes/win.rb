#
# Cookbook Name:: statacorp_stata
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Stata
windows_package "StataCorp Stata" do
  source "http://ims-chef.wesleyan.edu/windows/statacorp_stata/Stata13MSI.msi"
  checksum "250ac4e9b1eddfbb5184a0a70cbe8142ce99c242c7053a68fce7f1c61aad1ab5"
  options "ADDLOCAL=Ado,Core,StataIC64"
  version "13.0.0"
end

cookbook_file 'C:\Program Files (x86)\Stata13\STATA.LIC'

execute "Update Stata" do
  command '"C:\Program Files (x86)\Stata13\Stata-64.exe" -q -e "update all"'
end
