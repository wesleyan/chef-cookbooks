#
# Cookbook Name:: microsoft_silverlight
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "Microsoft Silverlight" do
  source "http://ims-chef.wesleyan.edu/windows/microsoft_silverlight/Silverlight_x64.exe"
  checksum "97450071afad60a78e499b3f8b856aca4336ec9985c6e828c6a6ec89af7e60c9"
  version "5.1.201250"
  installer_type :custom
  options "/q"
end
