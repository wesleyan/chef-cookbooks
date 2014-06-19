#
# Cookbook Name:: graz_genesis
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
# Install package, license info is seeded into pkg, premade with PackageMaker
dmg_package "genesis-1.7.6.dmg" do
  app "Genesis-1.7.6"
  volumes_dir "Genesis"
  dmg_name "genesis-1.7.6"
  source "http://ims-chef.wesleyan.edu/os_x/graz_genesis/genesis-1.7.6.dmg"
  checksum "6b040a204ab7f843fb14c8749004ca4e6c98e595551c75228f0cbe4b6dee732e"
  action :install
  type "pkg"
  package_id "com.graz.Genesis.pkg"
end

cookbook_file "/tmp/genesis.zip"
execute 'unzip /tmp/genesis.zip -d /System/Library/User\ Template/English.lproj/' do
  creates "/System/Library/User Template/English.lproj/.genesis"
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
dock_add "/Applications/Genesis/Genesis.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
