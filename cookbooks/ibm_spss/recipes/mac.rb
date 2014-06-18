#
# Cookbook Name:: ibm_spss
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

# Install custom package via commandline
dmg_package "SPSS Statistics 21" do
  app "SPSS Statistics"
  volumes_dir "SPSS Statistics"
  dmg_name "spss_statistics-21"
  source "http://ims-chef.wesleyan.edu/os_x/ibm_spss/spss_statistics-21.dmg"
  checksum "9554ac2229b06861e5b3e39f09884181c4687c6a0f6ffcb46c557b6db343dab7"
  action :install
  type "pkg"
  package_id "com.ibm.spss.statistics"
  version "21.0.0"
end

cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.ibm.spss.plist"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.ibm.spss-cf.plist"

# Create dock folder, if it does not exist
dock_add "Social Sciences" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/IBM/SPSS/Statistics/21/SPSSStatistics.app" do
  all_users true
  group "Social Sciences"
end
