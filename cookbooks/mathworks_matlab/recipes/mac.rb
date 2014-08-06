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
#directory "/Applications/MATLAB_R2013a" do
#  recursive true
#  action :delete
#end

# Install our .app, built with the MATLAB installer.
dmg_package "MathWorks MATLAB" do
  app "MATLAB_R2014a"
  volumes_dir "MATLAB"
  dmg_name "MATLAB-2014a-labclass"
  source "http://ims-chef.wesleyan.edu/os_x/mathworks_matlab/MATLAB-2014a-labclass.dmg"
  checksum "4809b95f0d4e5230ec7750543e31a6ba6e1acfc25f250bc1b92839ce0daa1060"
  action :install
  type "app"
  package_id "com.mathworks.matlab"
  version "2014.1.0"
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
dock_add "/Applications/MATLAB_R2014a.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end