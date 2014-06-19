#
# Cookbook Name:: troikatronix_isadora
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
# Install Isadora
dmg_package "Troikatronix Isadora" do
  app "Isadora Core Sassafras Installer"
  volumes_dir "Isadora Core Sassafras Installer"
  dmg_name "isadora-1.3.0f24-k2"
  source "http://ims-chef.wesleyan.edu/os_x/troikatronix_isadora/isadora-1.3.0f24-k2.dmg"
  checksum "4d5e0197c8b3b7557987fde3a820a5a97fa3d48d748d9f03c146fa3f15e04b46"
  action :install
  type "pkg"
  package_id "com.troikatronix.isadora-core-sassafras.application"
  version "1.3.26"
end

# Install FreeFrame plugins
dmg_package "FreeFrame plugins for Isadora" do
  app "FreeFrame Installer"
  volumes_dir "FreeFrame Plugins (UB)"
  dmg_name "petes-plugins-ub"
  source "http://ims-chef.wesleyan.edu/os_x/troikatronix_isadora/petes-plugins-ub.dmg"
  checksum "2a10f627934f3818ea739633d2d92193145ecc6bf4c2d0c68cae7d1322a25375"
  action :install
  type "pkg"
  package_id "com.troikatronix.freeframeub"
  version "1.2.0"
end

# Seed preferences file.
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/Isadora Prefs 1.3.0f26.izp"

# Create dock folder, if it does not exist
dock_add "Center for the Arts" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/Isadora/IsadoraCore.app" do
  all_users true
  group "Center for the Arts"
end