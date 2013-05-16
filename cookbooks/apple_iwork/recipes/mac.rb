#
# Cookbook Name:: apple_iwork
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install iWork base package
dmg_package "iWork '09" do
  app "iWork09"
  volumes_dir "iWork09"
  dmg_name "iWork09"
  source "http://ims-chef.wesleyan.edu/os_x/apple_iwork/iWork09.dmg"
  checksum "6caea1dec4b0c8f20ae51d48d292b9eb8f1cc2536be3727a62a436c35b272f46"
  action :install
  type "mpkg"
  package_id "com.apple.pkg.iWork09"
end

# Install latest update
dmg_package "iWork '09 Update" do
  app "iWork_9.3_Update"
  volumes_dir "iWork_9.3_Update(Manual)"
  dmg_name "iWork_9.3_Update"
  source "http://ims-chef.wesleyan.edu/os_x/apple_iwork/iWork_9.3_Update.dmg"
  checksum "e9e1559705dc7ebb428eaf1b5a0b4c41e755c5c42986786ee767e5577b135e70"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iWork_9.3_Update"
end

cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.iWork.Keynote.plist"
directory "/System/Library/User Template/English.lproj/Library/Preferences/ByHost"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/ByHost/com.apple.iWork.Keynote.1F88AEF2-ECEE-5B2E-82BD-94B0AE1305F1.plist"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/ByHost/com.apple.iWork.1F88AEF2-ECEE-5B2E-82BD-94B0AE1305F1.plist"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.iWork09.plist"