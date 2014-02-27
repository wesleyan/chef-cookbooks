#
# Cookbook Name:: microsoft_skype
# Recipe:: win
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our package
windows_package "Microsoft Skype" do
  source "http://ims-chef.wesleyan.edu/windows/microsoft_skype/SkypeSetupFull-6.7.0.102.exe"
  checksum "31ba35d9287c65b153eb589e73236e2a6bb8ca58a81330544f3bc8fc61819c08"
  version "6.7.0"
end
