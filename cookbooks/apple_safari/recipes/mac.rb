#
# Cookbook Name:: safari
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
# Latest revision already included in base image, no need to update for now.
#dmg_package "Update Safari" do
# app "Safari6.1.1MountainLion"
# volumes_dir "Safari"
# dmg_name "safari-6.1.1"
# source "http://ims-chef.wesleyan.edu/os_x/apple_safari/safari-6.1.1.dmg"
# checksum "a8fb24963ff844deca0ef9f467b852fe2c09d51ccabf535d6a2ac3388d5dbe46"
# action :install
# type "pkg"
# package_id "com.apple.pkg.Safari6.1.1MountainLion"
#end

# Add to dock
dock_add "/Applications/Safari.app" do
  all_users true
end

# Seed plist file to enable Java/suppress Pop-ups.
default_profile "com.apple.Safari.plist" do
  path "Library/Preferences"
  cookbook 'apple_safari'
end

# Seed Bookmarks file.
default_profile "Bookmarks.plist" do
  path "Library/Safari"
  cookbook 'apple_safari'
end
