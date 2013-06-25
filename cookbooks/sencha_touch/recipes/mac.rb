#
# Cookbook Name:: sencha_touch
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

dmg_package "Sencha CMD" do
  app "SenchaCmd"
  volumes_dir "SenchaCmd"
  dmg_name "senchacmd-3.1.2.342"
  source "http://ims-chef.wesleyan.edu/os_x/sencha_touch/senchacmd-3.1.2.342.dmg"
  checksum "3b22bf3b1f1baf4edf9ca377c7bdb15b95b55803c3742c65efa3fb72b7b26fd1"
  action :install
  type "app"
  package_id "com.sencha.cmd"
  version "3.1.2"
end

remote_file "#{Chef::Config[:file_cache_path]}/sencha_touch-2.2.1.zip" do
  source "http://ims-chef.wesleyan.edu/os_x/sencha_touch/sencha-touch-2.2.1.zip"
end

execute "unzip '#{Chef::Config[:file_cache_path]}/sencha_touch-2.2.1.zip' -d '/Applications/mampstack-5.4.16-0/apps/' > /dev/null"
