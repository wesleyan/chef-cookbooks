#
# Cookbook Name:: bitnami_mamp
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file "#{Chef::Config[:file_cache_path]}/mampstack.zip" do
  source "http://ims-chef.wesleyan.edu/os_x/bitnami_mamp/mampstack-5.4.16.zip"
end

command "unzip '#{Chef::Config[:file_cache_path]}/mampstack.zip' -d '/Applications/'"

