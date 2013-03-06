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
  dmg_name "lightwright-5.0.33"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/mckernon_lightwright/lightwright-5.0.33.dmg"
  checksum "b3d87b195d25d97573fad4d43877bc0e98d1b434218101fae0564b725538df28"
  action :install
  type "mpkg"
end

# Created shared directory if it doesn't already exist (the mpkg might create this directory, need to check)
directory "/Users/Shared/Lightwright" do
	owner "root"
	group "wheel"
	mode 00755
	action :create_if_missing
end

# Copy license file to proper location and set permissions
cookbook_file "/Users/Shared/Lightwright 5 Registration.regi" do
	source "Lightwright 5 Registration.regi"
	owner "root"
	group "wheel"
	mode 00766
end

