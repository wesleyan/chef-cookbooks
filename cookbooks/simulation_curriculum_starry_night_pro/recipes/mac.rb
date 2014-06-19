#
# Cookbook Name:: simulation_curriculum_starry_night_pro
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
dmg_package "starry_night_pro-6.4.3.dmg" do
  app "Starry Night Pro"
  volumes_dir "Starry Night Pro"
  dmg_name "starry_night_pro-6.4.3"
  source "http://ims-chef.wesleyan.edu/os_x/simulation_curriculum_starry_night_pro/starry_night_pro-6.4.3.dmg"
  checksum "8d1f38c84f7ef01a4f1e5fceb5be0ff8ee709a3149ef78369b7b7c23930b6ae7"
  action :install
  type "pkg"
  package_id "com.starrynight.StarryNightPro6.pkg"
end


directory "/System/Library/User Template/English.lproj/Library/Preferences/Imaginova Canada"
directory "/System/Library/User Template/English.lproj/Library/Preferences/Imaginova Canada/Prefs"
directory "/System/Library/User Template/English.lproj/Library/Preferences/Imaginova Canada/Prefs/Pro"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/Imaginova Canada/Prefs/Pro/Prefs.txt" do
  mode 0644
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
dock_add "/Applications/Starry Night Pro 6.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
