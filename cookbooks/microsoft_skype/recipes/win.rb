#
# Cookbook Name:: microsoft_skype
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our package
windows_package "Microsoft Skype" do
  source "http://ims-chef.wesleyan.edu/windows/microsoft_skype/SkypeSetupFull-6.7.0.102.exe"
  checksum "da3a63e760a9b95e66b18aa80213ece021b53123c103b28c4bc54948033b9db4"
  version "6.7.0102"
end
