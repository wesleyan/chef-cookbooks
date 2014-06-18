#
# Cookbook Name:: wolfram_mathematica
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
# Install base .app file
dmg_package "Wolfram Mathematica" do
  app "Mathematica"
  volumes_dir "Mathematica"
  dmg_name "Mathematica_9.0.1_OSX_Universal"
  source "http://ims-chef.wesleyan.edu/os_x/wolfram_mathematica/Mathematica_9.0.1_OSX_Universal.dmg"
  checksum "6f1928d7e50ffdd2bf0ac3984449129f5b9215b14bcf4a10e38f64748db2a3f6"
  action :install
  type "app"
  package_id "com.wolfram.mathematica.app"
  version "9.0.1"
end

# Install Browser & Spotlight plugin
dmg_package "Wolfram Mathematica Extras" do
  app "Extras"
  volumes_dir "Mathematica Extras"
  dmg_name "Mathematica-Extras-9.0.1"
  source "http://ims-chef.wesleyan.edu/os_x/wolfram_mathematica/Mathematica-Extras-9.0.1.dmg"
  checksum "025da260fdaa5578fd58ae556a97c2ff31b5fdaba2cb585e5c8f905cfb8dfdf2"
  action :install
  type "pkg"
  package_id "com.wolfram.mathematica.player.plugin.MathematicaPlayerPlugin.pkg"
  version "9.0.1"
end

# Create license directory within default user profile
directory "/System/Library/User Template/English.lproj/Library/Mathematica/Licensing" do
  mode 00755
  action :create
  recursive true
end

# Insert license file into default user profile
cookbook_file "Wolfram Mathematica License" do
  path "/System/Library/User Template/English.lproj/Library/Mathematica/Licensing/mathpass"
  source "mathpass"
  mode 00755
  :create
end

# Create dock folder, if it does not exist
dock_add "Natural Sciences and Mathematics" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/Mathematica.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
