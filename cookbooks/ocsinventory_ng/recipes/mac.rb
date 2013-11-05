#
# Cookbook Name:: ocsinventory_ng
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "OCS Inventory NG" do
  app "WesOCSNGAgent"
  volumes_dir "WesOCSNGAgent"
  dmg_name "ocsngagent-2.1rc1-wesleyan"
  source "http://ims-chef.wesleyan.edu/os_x/ocsinventory_ng/ocsngagent-2.1rc1-wesleyan.dmg"
  checksum "69a4846ed0ab1d7fca155a86bd54108f4baeea0d8a848500d72157038e1a39ac"
  action :install
  type "mpkg"
  package_id "edu.wesleyan.wesocsngagent.OcsinventoryAgentMacOSX.pkg"
end
