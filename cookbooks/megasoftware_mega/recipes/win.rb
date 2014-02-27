#
# Cookbook Name:: megasoftware_mega
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "MegaSoftware MEGA" do  
  source 'http://ims-chef.wesleyan.edu/windows/megasoftware_mega/MEGA5.22_Setup.exe'
  checksum 'c00009f62303aae03dc81cf6d299e9af2a618ad821b01a08c11bc277cafe4c3f'
  version "5.2.2"
end
