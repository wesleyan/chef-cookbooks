#
# Cookbook Name:: microsoft_silverlight
# Recipe:: win
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "Microsoft Silverlight" do
  source "http://sw.wesleyan.edu/windows/microsoft_silverlight/silverlight-5.1.30317.0.exe"
  checksum "55806d7bacf61799eaee18b0e8a6eda7bf62e384174f506ee75bfa3e898b233c"
  version "5.1.303170"
  installer_type :custom
  options "/q"
end
