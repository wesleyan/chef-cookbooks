#
# Cookbook Name:: nemetschek_vectorworks
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

# Vectorworks source installer is a crazy Python-based GUI installer, it supports silent installation which this recipe previously supported but it requires a logged in user which is dumb.  So, we've repackaged it with Composer and included the SP4 update.
dmg_package "Vectorworks" do
  app "Vectorworks 2013"
  volumes_dir "Vectorworks 2013"
  dmg_name "vectorworks_2013_sp4_classlab"
  source "http://ims-chef.wesleyan.edu/os_x/nemetschek_vectorworks/vectorworks_2013_sp4-classlab.dmg"
  checksum "84ebdcace6017c2d36db8463fd0d02f09ae141d7e6a1f918cce1119067508862"
  action :install
  type "pkg"
  package_id "com.nemetschek.vectorworks"
  version "2013.0.5"
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
dock_add "/Applications/Vectorworks 2013/Vectorworks 2013.app" do
  all_users true
  group "Center for the Arts"
end