#
# Cookbook Name:: adobe_indesign_cs6
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
# Install base package
dmg_package "Adobe InDesign CS6" do
  app "adobe_indesign_cs6_Install"
  volumes_dir "adobe_indesign_cs6"
  dmg_name "adobe_indesign_cs6-8.0.1"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_indesign_cs6/adobe_indesign_cs6-8.0.1.dmg"
  checksum "a470e9390599672332da3a9f82b3f091839963e6ed540f8a6dfbc00aef1a60b4"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.CD42F8C2-93BE-4C32-9064-C04F00977A73"
end

#Install Digital Publishing tools update 
#dmg_package "Adobe Digital Publishing Tools Update" do
# options "–-mode=silent"
# app "AdobeDigitalPublishingCS6-AutoUpdate/AdobePatchInstaller.app/Contents/MacOS/AdobePatchInstaller"
# volumes_dir "AdobeDigitalPublishingCS6-AutoUpdate"
# dmg_name "AdobeDigitalPublishingPatch-CS6-26.0.0"
# source "http://ims-chef.wesleyan.edu/os_x/adobe_indesign_cs6/AdobeDigitalPublishingPatch-CS6-26.0.0.dmg"
# checksum "6a28f66c0e9aa6047e82c8d3297d2e145962af93a4c5c74f8c371554517a4de1"
# action :install
# type "custom"
# package_id "com.adobe.Enterprise.update.DPSTools"
# version "26.0.0"
#end

# Download icon
cookbook_file "/tmp/adobe.png"

# Create dock folder, if it does not exist
dock_add "Adobe Creative Suite 6" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
  icon "/tmp/adobe.png"
end

# Add icon to dock
dock_add "/Applications/Adobe InDesign CS6/Adobe InDesign CS6.app" do
  all_users true
  group "Adobe Creative Suite 6"
#  restart true
end
