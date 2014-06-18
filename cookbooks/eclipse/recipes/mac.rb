#
# Cookbook Name:: eclipse
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
# Install app, which copies directory to /Applications
dmg_package "Eclipse IDE" do
  app "Eclipse"
  volumes_dir "Eclipse"
  dmg_name "eclipse-4.3.2"
  source "http://sw.wesleyan.edu/os_x/eclipse/eclipse-4.3.2.dmg"
  checksum "5dc9b124fc98b884fabc74f60866836ce13742cec5587104dddb365d2895940d"
  action :install
  type "dir"
  package_id "org.eclipse.sdk"
  version "4.3.2"
end

cookbook_file "/Applications/Eclipse/Eclipse.app/Contents/MacOS/eclipse.ini" do
  mode 0666
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
dock_add "/Applications/Eclipse/Eclipse.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
