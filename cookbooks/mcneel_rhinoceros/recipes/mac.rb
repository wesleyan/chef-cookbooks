#
# Cookbook Name:: mcneel_rhinoceros
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
dmg_package "McNeel Rhinoceros" do
  app "Rhinoceros"
  volumes_dir "Rhinoceros"
  dmg_name "rhinoceros_wip_20130815"
  source "http://ims-chef.wesleyan.edu/os_x/mcneel_rhinoceros/rhinoceros_wip_20130815.dmg"
  checksum "0ae065af85ea9649e1ac24c9eb5b35e39daa529a52126ed56d8733f4530c4fb8"
  action :install
  type "app"
  package_id "com.mcneel.rhinoceros.wip"
  version "5.0.0815"
end

# Create dock folder, if it does not exist
dock_add "Center for the Arts" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/Rhinoceros.app" do
  all_users true
  group "Center for the Arts"
end