#
# Cookbook Name:: supercollider
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
dmg_package "SuperCollider" do
  app "SuperCollider"
  volumes_dir "SuperCollider"
  dmg_name "SuperCollider-3.6.6-OSX-universal"
  source "http://ims-chef.wesleyan.edu/os_x/supercollider/SuperCollider-3.6.6-OSX.dmg"
  checksum "4cc59a3ab70cbac60ce64b0fb7b6b86e070456e8f597229b05057ea6c4e1edb9"
  action :install
  type "dir"
  package_id "net.sourceforge.supercollider"
  version "3.6.6"
end

# Copy help files to tmp directory
cookbook_file "/tmp/JL_Book.zip" do
  mode 0666
end

# Create directories within default user profile.
directory "/System/Library/User Template/English.lproj/Library/Application Support/SuperCollider/Help/Tutorials" do
  mode 00755
  action :create
  recursive true
end

# Unzip help files to default user profile.
execute 'unzip /tmp/JL_Book.zip -d "/System/Library/User Template/English.lproj/Library/Application Support/SuperCollider/Help/Tutorials/"' do
  returns [0,1]
end

# Replace Help index with modified version to show custom help files.
cookbook_file "/System/Library/User Template/English.lproj/Library/Application Support/SuperCollider/Help/Help.html" do
	mode 0755
end

# Drop in file that SC needs to not overwrite our Help.html index
cookbook_file "/System/Library/User Template/English.lproj/Library/Application Support/SuperCollider/Help/scdoc_version" do
	mode 0755
end

# Add to dock
dock_add "/Applications/SuperCollider/SuperCollider.app" do
  all_users true
  group "Center for the Arts"
end