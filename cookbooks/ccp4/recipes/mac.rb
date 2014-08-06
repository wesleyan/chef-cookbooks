#
# Cookbook Name:: ccp4
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
# Install CCP4
dmg_package "CCP4 and Coot" do
  app "ccp4-6.4.0"
  volumes_dir "ccp4-6.4.0"
  dmg_name "ccp4-6.4.0.2"
  source "http://sw.wesleyan.edu/os_x/ccp4/ccp4-6.4.0.2.dmg"
  checksum "ae813c980b782d7e3c6165ef5d3ea3e621be271dd2b7f344c4f0a99d83ad208c"
  action :install
  type "mpkg"
  package_id "ccp4.ac.uk.ccp4640.ccp4app.pkg"
end

# Create dock folder, if it does not exist
dock_add "Natural Sciences and Mathematics" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add ccp4 icon to dock
dock_add "/Applications/ccp4-6.4.0/ccp4.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end

# Add coot icon to dock
dock_add "/Applications/ccp4-6.4.0/coot.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end