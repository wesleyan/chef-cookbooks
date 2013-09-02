#
# Cookbook Name:: sencha_touch
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

dmg_package "Sencha CMD" do
  app "Sencha Cmd"
  volumes_dir "Sencha Cmd"
  dmg_name "senchacmd-3.1.2.342"
  source "http://ims-chef.wesleyan.edu/os_x/sencha_touch/senchacmd-3.1.2.342.dmg"
  checksum "b2e63e8e18e0819cd02a889f4a752c5675a3a673e1bb92f66e9055165bd5d5c5"
  action :install
  type "pkg"
  package_id "com.sencha.cmd"
  version "3.1.2"
end

remote_file "#{Chef::Config[:file_cache_path]}/sencha_touch-2.2.1.zip" do
  source "http://ims-chef.wesleyan.edu/os_x/sencha_touch/sencha-touch-2.2.1.zip"
end

execute "unzip '#{Chef::Config[:file_cache_path]}/sencha_touch-2.2.1.zip' -d '/Applications/mampstack-5.4.16-0/apps/' > /dev/null" do
  not_if { ::File.exists? '/Applications/mampstack-5.4.16-0/apps/touch-2.2.1' }
end
