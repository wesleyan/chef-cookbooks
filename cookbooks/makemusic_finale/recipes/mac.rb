#
# Cookbook Name:: makemusic_finale
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
# Install our pkg.
dmg_package "Finale 2014" do
  app "Install Finale 2014a"
  volumes_dir "Finale2014a"
  dmg_name "Finale2014aMacFull"
  source "http://sw.wesleyan.edu/os_x/makemusic_finale/Finale2014aMacFull.dmg"
  checksum "c0de56e937ee398c3931954935c08bee5f9f9184834384cc3e93c4fa97ad4e78"
  action :install
  type "pkg"
  package_id "com.makemusic.pkg.Finale18.AppCoreInstaller2014.1.3627.0"
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
dock_add "/Applications/Finale 2014.app" do
  all_users true
  group "Center for the Arts"
end