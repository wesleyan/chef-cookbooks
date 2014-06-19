#
# Cookbook Name:: adobe_illustrator_cs6
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
# Install package
dmg_package "adobe_illustrator_cs6-16.0.3.dmg" do
  app "adobe_illustrator_cs6_Install"
  volumes_dir "adobe_illustrator_cs6"
  dmg_name "adobe_illustrator_cs6-16.0.4"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_illustrator_cs6/adobe_illustrator_cs6-16.0.4.dmg"
  checksum "ac13aa242ecc923a544d6495ea62cbaa162a2593c25d2274edefd049ff7445cf"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.5DFEC601-60E4-435F-9A47-24817F286C7C"
end

# Download icon
cookbook_file "/tmp/adobe.png"

# Create dock folder
dock_add "Adobe Creative Suite 6" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
  icon "/tmp/adobe.png"
end

# Add icon to dock
dock_add "/Applications/Adobe Illustrator CS6/Adobe Illustrator.app" do
  all_users true
  group "Adobe Creative Suite 6"
#  restart true
end
