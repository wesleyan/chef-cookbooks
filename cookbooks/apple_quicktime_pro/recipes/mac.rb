#
# Cookbook Name:: apple_quicktime_pro
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our package
dmg_package "Apple QuickTime Pro" do
  app "QuickTimePlayer7.6.6_SnowLeopard"
  volumes_dir "QuickTime Player 7.6.6 Update"
  dmg_name "QuickTimePlayer7.6.6_SnowLeopard"
  source "http://ims-chef.wesleyan.edu/os_x/apple_quicktime_pro/QuickTimePlayer7.6.6_SnowLeopard.dmg"
  checksum "704b5eee2ad953f301a652033db317e6997b9e5910db4b1f8d511b04ab62f2bc"
  action :install
  type "pkg"
  package_id "com.apple.pkg.QuickTimePlayer7.6.6_SnowLeopard"
end

# Serialize QuickTime!
execute "Serialize QuickTime Pro" do
	command "defaults write /Library/Preferences/com.apple.QuickTime \"Pro Key\" -dict-add 'Name' 'Wesleyan Univ' 'Registration Key' 'L885-Z4ZN-R2J9-SNTH-FUJ3'"
end