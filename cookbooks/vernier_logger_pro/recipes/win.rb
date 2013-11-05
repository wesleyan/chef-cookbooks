#
# Cookbook Name:: vernier_logger_pro
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "MSVC Redistributeable for Bluetooth Radio" do
  source 'http://ims-chef.wesleyan.edu/windows/vernier_logger_pro/vcredist_x86.exe'
  installer_type :custom
  options '/q'
  checksum '41f45a46ee56626ff2699d525bb56a3bb4718c5ca5f4fb5b3b38add64584026b'
  version "1.0.0"
end

windows_package 'Vernier Logger Pro' do
  source 'http://ims-chef.wesleyan.edu/windows/vernier_logger_pro/LoggerPro3.msi'
  checksum 'b8ffa89c58277b3dcaf5fc8ef53f4eceb42e7c2442a5c6419e147ee9460cacd7'
  version "3.8.61"
end

windows_package 'Vernier Logger Pro DataShare' do
  source 'http://ims-chef.wesleyan.edu/windows/vernier_logger_pro/LoggerPro3.msi'
  options 'INSTALLDATASHARE="INSTALL"'
  checksum 'b8ffa89c58277b3dcaf5fc8ef53f4eceb42e7c2442a5c6419e147ee9460cacd7'
  version "3.8.61"
end
