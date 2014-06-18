#
# Cookbook Name:: aquamacs
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
dmg_package "Aquamacs Emacs" do
  app "Aquamacs"
  volumes_dir "Aquamacs Emacs"
  dmg_name "Aquamacs-Emacs-3.0a"
  source "http://sw.wesleyan.edu/os_x/aquamacs_emacs/Aquamacs-Emacs-3.0a.dmg"
  checksum "1d833cb2e40c1af96713badc4efa7c1c9259317b91edcfe17059c73e989f9e07"
  action :install
  type "app"
  package_id "org.aquamacs.emacs"
  version "3.0.0"
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
dock_add "/Applications/Aquamacs.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
