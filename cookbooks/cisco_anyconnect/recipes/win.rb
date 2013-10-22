#
# Cookbook Name:: cisco_anyconnect
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "Cisco AnyConnect VPN" do
  source "http://ims-chef.wesleyan.edu/windows/cisco_anyconnect/anyconnect-win-3.1.01065-web-deploy-k9.exe"
  checksum "522b1bf8994c04301cffbdcd928485d31c7c69edfcec01dcd44060b9ce51107f"
  version "3.0.11042"
  installer_type :custom
  options "/qn"
end

