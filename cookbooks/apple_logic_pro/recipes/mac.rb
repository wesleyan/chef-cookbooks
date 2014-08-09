#
# Cookbook Name:: apple_logic_pro
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
# Install base Logic package, pkg captured from Mac App Store
dmg_package "Apple Logic Pro" do
  app "Logic Pro X"
  volumes_dir "Logic Pro X"
  dmg_name "apple_logic_pro-10.0.7"
  source "http://ims-chef.wesleyan.edu/os_x/apple_logic_pro/logic_pro_x-10.0.7.dmg"
  checksum "8ad5b78043d8af8aa2a1ffb9e3d14861a31872aa90908372c0598c8ea40f8acd"
  action :install
  type "pkg"
  package_id "com.apple.pkg.LogicProX_AppStore"
  version "10.0.7"
end

# Install core content, required for app launch.
dmg_package "Logic Pro Core Content" do
  app "ProAudioCoreContent10"
  volumes_dir "ProAudioCoreContent10"
  dmg_name "ProAudioCoreContent10"
  source "http://ims-chef.wesleyan.edu/os_x/apple_logic_pro/ProAudioCoreContent10.dmg"
  checksum "062d56efcea5accd4d18b3f5847d05fe0fa00c820242f7779fb90febf4f7ba70"
  action :install
  type "pkg"
  package_id "com.apple.pkg.ProAudioCoreContent10"
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
dock_add "/Applications/Logic Pro X.app" do
  all_users true
  group "Center for the Arts"
end