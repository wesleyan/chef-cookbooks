#
# Cookbook Name:: synergy_kaleidagraph
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
dmg_package "Synergy KaleidaGraph" do
  app "KaleidaGraph"
  volumes_dir "KaleidaGraph"
  dmg_name "kaleidagraph-4.1.3"
  source "http://ims-chef.wesleyan.edu/os_x/synergy_kaleidagraph/kaleidagraph-4.1.3.dmg"
  checksum "e501994fc852bb04d505e52fd173d12950f200d94f33f0a78fbd91f841b3fb02"
  action :install
  type "pkg"
  package_id "com.synergy.kaleidagraph"
  version "4.1.3"
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
dock_add "/Applications/KaleidaGraph 4.1/KaleidaGraph.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
