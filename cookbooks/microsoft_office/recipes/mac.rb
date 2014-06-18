#
# Cookbook Name:: microsoft_office
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
# Install Office base
dmg_package "Microsoft Office 2011 SP3" do
  app "Microsoft Office 2011"
  volumes_dir "Microsoft Office 2011"
  dmg_name "microsoft_office_2011-14.3.2"
  source "http://sw.wesleyan.edu/os_x/microsoft_office_2011/microsoft_office_2011-14.3.2.dmg"
  checksum "d546e0e4cbb5bc37fbdc9ba904d7df8a08d69a2afb7323fef752d83fd4a36f05"
  action :install
  type "pkg"
  package_id "com.microsoft.office.2011"
end

# Install latest update.
dmg_package "Update Office 2011" do
  app "Office 2011 14.4.2 Update"
  volumes_dir "Microsoft Office 2011 14.4.2 Update"
  dmg_name "Office2011-1442Update_EN-US"
  source "http://sw.wesleyan.edu/os_x/microsoft_office_2011/Office2011-1442Update_EN-US.dmg"
  checksum "e0123bcef3cf1b939cbfce39fe3517b5c7874eb8d77cbf2d8bbb62145337b407"
  action :install
  type "pkg"
  package_id "com.microsoft.office.2011"
  version "14.4.2"
end

# Install customized plist files to surpress first-run dialogues
default_profile "com.microsoft.autoupdate2.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end
default_profile "com.microsoft.error_reporting.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end
default_profile "com.microsoft.office.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end
default_profile "com.microsoft.office.setupassistant.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end
default_profile "com.microsoft.Excel.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end
default_profile "com.microsoft.Powerpoint.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end
default_profile "com.microsoft.Word.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end


# Download icon
cookbook_file "/tmp/office.png"

# Create dock folder
dock_add "Microsoft Office 2011" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
  icon "/tmp/office.png"
end

# Add applications to dock
dock_add "/Applications/Microsoft Office 2011/Microsoft Excel.app" do
  all_users true
  group "Microsoft Office 2011"
end

dock_add "/Applications/Microsoft Office 2011/Microsoft PowerPoint.app" do
  all_users true
  group "Microsoft Office 2011"
end

dock_add "/Applications/Microsoft Office 2011/Microsoft Word.app" do
  all_users true
  group "Microsoft Office 2011"
#  restart true
end

