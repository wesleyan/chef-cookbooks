#
# Cookbook Name:: notepad++
# Recipe:: default
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "Notepad++" do
  source "http://ims-chef.wesleyan.edu/windows/notepad++/npp.6.3.3.Installer.exe"
  version "6.3.3"
end

