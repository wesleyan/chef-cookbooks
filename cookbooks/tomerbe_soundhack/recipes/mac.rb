#
# Cookbook Name:: tomerbe_soundhack
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
dmg_package "SH896.dmg" do
  app "SoundHack 0.896 - Universal Binary"
  volumes_dir "SH896"
  dmg_name "SH896"
  source "http://ims-chef.wesleyan.edu/os_x/tomerbe_soundhack/SH896.dmg"
  checksum "fd4b8e74d10b5d1744e6ecd3af469ee28be22ba675bffe88f823c62bcd8b30cd"
  action :install
  type "pkg"
  package_id "com.tomErbe.soundhack0.SoundHack"
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
dock_add "/Applications/SoundHack.app" do
  all_users true
  group "Center for the Arts"
end