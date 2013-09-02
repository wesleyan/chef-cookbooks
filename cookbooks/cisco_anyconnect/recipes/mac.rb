#
# Cookbook Name:: cisco_anyconnect
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Installs our package, FYI the dmg was repacked and includes a modified XML to suppress the Web Security install.
dmg_package "Cisco AnyConnect VPN" do
  app "AnyConnect"
  volumes_dir "AnyConnect 3.1.03103"
  dmg_name "anyconnect-macosx-i386-3.1.03103-k9"
  source "http://ims-chef.wesleyan.edu/os_x/cisco_anyconnect/anyconnect-macosx-i386-3.1.03103-k9.dmg"
  checksum "734b48978c4e6cacf7c0c9236c50b0fab9046b30fdb87e37dbbdf6e380e9f837"
  action :install
  type "pkg"
  xml_choices [["choice_websecurity", "selected", 0]]
  package_id "com.cisco.jabber.video"
  version "3.1.03103"
end

