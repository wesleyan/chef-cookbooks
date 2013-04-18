#
# Cookbook Name:: mckernon_lightwright
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install LightWright mpkg
dmg_package "LightWright" do
  app "LW5MacInstaller"
  volumes_dir "LightWright"
  dmg_name "lightwright-5.0.34"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/mckernon_lightwright/lightwright-5.0.34.dmg"
  checksum "f2d855aac810215cd4d67da5772d8aa902432e755994ac49a91984007c45e100"
  action :install
  type "mpkg"
  package_id "com.mckernon.lightwright5.Lightwright5.pkg"
  version "5.0.34"
end

# Created shared directory if it doesn't already exist (the mpkg might create this directory, need to check)
directory "/Users/Shared/Lightwright" do
	owner "root"
	group "wheel"
	mode 00777
	action :create
end

# Copy license file to proper location and set permissions
cookbook_file "/Users/Shared/Lightwright/Lightwright 5 Registration.regi" do
	source "Lightwright 5 Registration.regi"
	owner "root"
	group "wheel"
	mode 00766
end

directory "/System/Library/User Template/English.lproj/Library/Preferences/Lightwright" do
  mode 00777
  action :create
end

cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/Lightwright/Lightwright 5 Settings.pref"
