#
# Cookbook Name:: rockware_igpet
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package 'Rockware IgPet' do
  source 'C:\Users\Max\Desktop\IgPet\SetupIgpet2012.exe'
  version '2012.0.0'
end