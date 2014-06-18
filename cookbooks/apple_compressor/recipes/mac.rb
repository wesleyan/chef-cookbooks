#
# Cookbook Name:: compressor
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
dmg_package "Apple Compressor" do
  app "Compressor"
  volumes_dir "Compressor"
  dmg_name "compressor-4.1.1.dmg"
  source "http://sw.wesleyan.edu/os_x/apple_compressor/compressor-4.1.1.dmg"
  checksum "92869e46204496e3a626c5010bd4471f766b9020a16b18174cf5197238843587"
  action :install
  type "pkg"
  package_id "com.apple.pkg.Compressor_AppStore"
  version "4.1.1"
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
dock_add "/Applications/Compressor.app" do
  all_users true
  group "Center for the Arts"
end