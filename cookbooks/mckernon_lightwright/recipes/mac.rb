#
# Cookbook Name:: mckernon_lightwright
# Recipe:: mac
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#   http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Install LightWright mpkg
dmg_package "LightWright" do
  app "LW5MacInstaller"
  volumes_dir "LightWright"
  dmg_name "lightwright-5.0.34"
  source "http://ims-chef.wesleyan.edu/os_x/mckernon_lightwright/lightwright-5.0.34.dmg"
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

# Create preferences directory
directory "/System/Library/User Template/English.lproj/Library/Preferences/Lightwright" do
  mode 00777
  action :create
end

# Seed preferences file
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/Lightwright/Lightwright 5 Settings.pref"


# Create dock folder, if it does not exist
dock_add "Center for the Arts" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/Lightwright 5/Lightwright 5.app" do
  all_users true
  group "Center for the Arts"
end
