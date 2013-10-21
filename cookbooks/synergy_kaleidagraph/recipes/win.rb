#
# Cookbook Name:: synergy_kaleidagraph
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "Synergy Kaleidagraph" do
  source "http://ims-chef.wesleyan.edu/windows/synergy_kaleidagraph/KG41Network.exe"
  checksum "e709983238e403482dda40915b6a1e20c2b157c2bb47658d02810045db4be9a2"
  installer_type :custom
  options "-s"
  version "4.1.0"  
end

cookbook_file 'C:\Program Files (x86)\Kaleidagraph 4.1\KG41License'