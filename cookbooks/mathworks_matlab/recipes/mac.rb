#
# Cookbook Name:: mathworks_matlab
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
# Remove MATLAB 2013a if it's installed
directory "/Applications/MATLAB_R2013a" do
  recursive true
  action :delete
end

# Install our .app, built with the MATLAB installer.
dmg_package "MathWorks MATLAB" do
  app "MATLAB_R2013b"
  volumes_dir "MATLAB"
  dmg_name "MATLAB-2013b"
  source "http://ims-chef.wesleyan.edu/os_x/mathworks_matlab/MATLAB-2013b-labclass.dmg"
  checksum "04010c7aa7d6f0308347e631acf0c6df049d4d17c21689c2ed83beb9e2fe4f86"
  action :install
  type "app"
  package_id "com.mathworks.matlab"
  version "2013.2.0"
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
dock_add "/Applications/MATLAB_R2013b.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end