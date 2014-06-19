#
# Cookbook Name:: kintekcorp_kintek_explorer
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
# Install our .app
dmg_package "KinTek Explorer" do
  app "KinTek_Explorer"
  volumes_dir "KinTek_Explorer"
  dmg_name "kintek_explorer-student-4.0.131124"
  source "http://ims-chef.wesleyan.edu/os_x/kintekcorp_kintek_explorer/kintek_explorer-student-4.0.131124.dmg"
  checksum "2b7cf661e8a8ff9dcc5110735e95b895cd4c9c34aea3939676c34b992c5ecae0"
  action :install
  type "dir"
  package_id "com.kintek-corp.kintek.explorer"
  version "4.0.131124"
end

# Add to dock
dock_add "/Applications/KinTek_Explorer/KinTek_Explorer.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end