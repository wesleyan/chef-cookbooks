#
# Cookbook Name:: ultravnc
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "UltraVNC" do  
  source 'http://ims-chef.wesleyan.edu/windows/ultravnc/UltraVnc_1193_X64.msi'
  checksum '43dbccb3c6fbd7471558e7f03a873376873a734558f1d662acf7c31414e88f23f'
  version "1.1.93"
end
