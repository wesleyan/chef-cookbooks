#
# Cookbook Name:: turning_technologies_turningpoint
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app
dmg_package "TurningPoint" do
  app "TurningPoint"
  volumes_dir "TurningPoint"
  dmg_name "TurningPoint-5.3.1"
  source "http://ims-chef.wesleyan.edu/os_x/turning_technologies_turningpoint/TurningPoint-5.3.1.dmg"
  checksum "ec89d22c53a2d0cf4d025e60d91e8b14608ba7e6df666211d66770ba14770f96"
  action :install
  type "app"
  package_id "com.turningtechnologies.turningpoint"
  version "5.3.1"
end

# Create directory for PowerPoint connector.
directory "/System/Library/CFMSupport" do
  mode 00755
  action :create
  recursive true
end

# Drop the PowerPoint connector library file into place.
 cookbook_file "TurningPoint PowerPoint library" do
  path "/System/Library/CFMSupport/TTSharedLib.1.0.0.dylib"
  source "TTSharedLib.1.0.0.dylib"
  mode 00755
  :create
end

# Put TurningPoint preferences into default user profile to suppress license agreement.
cookbook_file "TurningPoint EULA suppression" do
  path "/System/Library/User Template/English.lproj/Library/Preferences/com.turningtechnologies.TurningPoint.plist"
  source "com.turningtechnologies.TurningPoint.plist"
  mode 00755
  :create
end