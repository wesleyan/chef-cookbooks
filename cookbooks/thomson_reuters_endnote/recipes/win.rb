#
# Cookbook Name:: thomson_reuters_endnote
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

cookbook_file "#{Chef::Config['file_cache_path']}\\License.dat"

windows_package "Endnote X7" do
  source "http://ims-chef.wesleyan.edu/windows/thomson_reuters_endnote/ENX7Inst.msi"
  checksum "05659637be23cb42fe699a67b21aa39dfcb6bb15efd4d2a52c6e183fa85412af"
  version "7.0.1"
end