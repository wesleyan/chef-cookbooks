#
# Cookbook Name:: eclipse
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install app, which copies directory to /Applications
dmg_package "eclipse-SDK-4.2.2-macosx-cocoa-x86_64.dmg" do
  app "Eclipse"
  volumes_dir "Eclipse"
  dmg_name "eclipse-SDK-4.2.2-macosx-cocoa-x86_64"
  source "http://ims-chef.wesleyan.edu/os_x/eclipse/eclipse-SDK-4.2.2-macosx-cocoa-x86_64.dmg"
  checksum "9503aae0e14d76404f4564abef2337f3889b1a71858b41b9091697a09443c3e3"
  action :install
  type "dir"
  package_id "org.eclipse.sdk"
  version "4.2.2"
end

cookbook_file "/Applications/Eclipse/Eclipse.app/Contents/MacOS/eclipse.ini" do
  mode 0666
end