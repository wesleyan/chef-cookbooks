#
# Cookbook Name:: extensis_utc
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
# Install client package
dmg_package "Universal Type Client" do
  app "Universal Type Client"
  volumes_dir "Universal Type Client"
  dmg_name "universal_type_client-4.0.2"
  source "http://ims-chef.wesleyan.edu/os_x/extensis_utc/universal_type_client-4.0.2.dmg"
  checksum "8eb1010868363300299444abe1b5c52b005c5bd15ae242a50fa3b622310bd193"
  action :install
  type "pkg"
  package_id "com.extensis.UniversalTypeClient.universalTypeClient40.UniversalTypeClient.pkg"
  version "4.0.2"
end

cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.extensis.UniversalTypeClient.plist" do
  mode 0666
end