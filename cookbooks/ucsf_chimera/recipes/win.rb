#
# Cookbook Name:: ucsf_chimera
# Recipe:: win
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our package.
windows_package 'UCSF Chimera' do
  source 'http://sw.wesleyan.edu/windows/ucsf_chimera/chimera-1.9-win64.exe'
  checksum 'e501276b4b62c6b51b786032b422b0362a995d7b3c772aa36819c0b74a2df70f'
  version '1.9.0'
end

