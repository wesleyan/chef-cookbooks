#
# Cookbook Name:: google_earth
# Recipe:: win
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

remote_file "Download Google Earth" do
  source "http://ims-chef.wesleyan.edu/windows/google_earth/GoogleEarth.zip"
  path 'C:\TEMP\GoogleEarth.zip'
  checksum "3f173c38e5014021301001b4f6f1725c71a156aa8c3e125e738507afbcf2addd"
end

execute "Expand Google Earth" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\GoogleEarth.zip\" -y -o\"C:\\TEMP\""
  action :run
end

windows_package "Google Earth" do  
  source 'C:\TEMP\google_earth\Google Earth.msi'
  version "7.1.11871"
end
