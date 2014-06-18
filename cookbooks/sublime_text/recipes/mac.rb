#
# Cookbook Name:: sublime_text
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

# Install Sublime Text
dmg_package "Sublime Text" do
  app "Sublime Text"
  volumes_dir "Sublime Text"
  dmg_name "SublimeText-3047.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/sublime_text/SublimeText-3047.dmg"
  checksum "7b60d9398514caa000fc65140fc6ac5e9332413489ed86cfcfac248d23b8a303"
  action :install
  type "app"
  package_id "com.sublimetext"
  version "3.0.3047"
end
