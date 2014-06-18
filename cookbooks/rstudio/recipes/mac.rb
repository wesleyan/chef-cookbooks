#
# Cookbook Name:: rstudio
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
dmg_package "RStudio" do
  app "RStudio"
  volumes_dir "RStudio-0.98.507"
  dmg_name "RStudio-0.98.507"
  source "http://sw.wesleyan.edu/os_x/rstudio/RStudio-0.98.507.dmg"
  checksum "7df8e8791958903c6073f6269bb8ba24b763ab9ecae3ff6167723aa422f85777"
  action :install
  type "app"
  package_id "com.rstudio.rstudio.ide"
  version "0.98.507"
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
dock_add "/Applications/RStudio.app" do
  all_users true
  group "Social Sciences"
end
