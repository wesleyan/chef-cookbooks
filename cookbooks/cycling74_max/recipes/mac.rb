#
# Cookbook Name:: cycling74_max
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
dmg_package "Cycling74 Max" do
  app "Max 6.1 Installer"
  volumes_dir "Max61_130620_69b6394_keyserver"	
  dmg_name "Max613_69b6394_keyserver"
  source "http://ims-chef.wesleyan.edu/os_x/cycling74_max/Max613_69b6394_keyserver.dmg "
  checksum "d5fbcda041c5774da710b297ab936ab1f76458d3002e712e3ca73822d7c39e0f"
  action :install
  type "pkg"
  package_id "com.cycling74.Max61.pkg"
  version "6.1.3"
end

# Create dock folder, if it does not exist
dock_add "Center for the Arts" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add to dock
dock_add "/Applications/Max 6.1/Max.app" do
  all_users true
  group "Center for the Arts"
end