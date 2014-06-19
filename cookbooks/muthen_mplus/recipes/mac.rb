#
# Cookbook Name:: muthen_mplus
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
dmg_package "Muthen Mplus" do
  app "Mplus"
  volumes_dir "Mplus"
  dmg_name "mplus-7.11"
  source "http://ims-chef.wesleyan.edu/os_x/muthen_mplus/mplus-7.11.dmg"
  checksum "68a54a06776c3e3d9fc00924ad082edb5b34966946bfb60ed33d48a70fccc570"
  action :install
  type "dir"
  package_id "com.statmodel.muthen.mplus"
  version "7.1.1"
end

# Create dock folder, if it does not exist
dock_add "Social Sciences" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/Mplus/Mplus Editor.app" do
  all_users true
  group "Social Sciences"
end

