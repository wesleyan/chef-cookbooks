#
# Cookbook Name:: winscp
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "WinSCP" do  
  source 'http://ims-chef.wesleyan.edu/windows/winscp/winscp517setup.exe'
  checksum '2ed2317bfff8a1bd1418a7cb89de17d3899ccd2aa69ebf09541b47f8895488cb'
  version "5.1.7"
end
