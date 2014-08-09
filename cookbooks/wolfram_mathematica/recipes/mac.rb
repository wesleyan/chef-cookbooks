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
  dmg_name "Mathematica_10.0.0-labclass"
  source "http://ims-chef.wesleyan.edu/os_x/wolfram_mathematica/Mathematica_10.0.0-labclass.dmg"
  checksum "82f3da2978ecd004c5206da21fb6dd751aac501982bf0ac213e09936793bc482"
  action :install
  type "app"
  package_id "com.wolfram.mathematica.app"
  version "10.0.0"
end

# Create license directory within default user profile
#directory "/System/Library/User Template/English.lproj/Library/Mathematica/Licensing" do
#  mode 00755
#  action :create
#  recursive true
#end

# Insert license file into default user profile
#cookbook_file "Wolfram Mathematica License" do
#  path "/System/Library/User Template/English.lproj/Library/Mathematica/Licensing/mathpass"
#  source "mathpass"
#  mode 00755
#  :create
#end

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
