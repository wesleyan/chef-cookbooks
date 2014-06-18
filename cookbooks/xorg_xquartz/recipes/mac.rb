#
# Cookbook Name:: xorg_xquartz
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
# Install our pkg
dmg_package "XQuartz-2.7.6.dmg" do
  app "XQuartz"
  volumes_dir "XQuartz-2.7.6"
  dmg_name "XQuartz-2.7.6"
  source "http://sw.wesleyan.edu/os_x/xorg_xquartz/XQuartz-2.7.6.dmg"
  checksum "02aa3268af0bd7dcd5dfbc10d673f5c6834bba6371a928d2a3fc44a8039b194e"
  action :install
  type "pkg"
  package_id "org.macosforge.xquartz.pkg"
  version "2.7.6"
end

# Here we symlink the default X11.app with XQuartz.app
execute "Symlink X11" do
  command "ln -s /Applications/Utilities/XQuartz.app /Applications/Utilities/X11.app"
  not_if { File.exist?("/Applications/Utilities/X11.app") }
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
dock_add "/Applications/Utilities/XQuartz.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
