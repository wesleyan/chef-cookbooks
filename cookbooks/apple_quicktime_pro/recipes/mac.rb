#
# Cookbook Name:: apple_quicktime_pro
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
# Install our package
dmg_package "Apple QuickTime Pro" do
  app "QuickTimePlayer7.6.6_SnowLeopard"
  volumes_dir "QuickTime Player 7.6.6 Update"
  dmg_name "QuickTimePlayer7.6.6_SnowLeopard"
  source "http://ims-chef.wesleyan.edu/os_x/apple_quicktime_pro/QuickTimePlayer7.6.6_SnowLeopard.dmg"
  checksum "704b5eee2ad953f301a652033db317e6997b9e5910db4b1f8d511b04ab62f2bc"
  action :install
  type "pkg"
  package_id "com.apple.pkg.QuickTimePlayer7.6.6_SnowLeopard"
end

# Serialize QuickTime!
execute "Serialize QuickTime Pro" do
	command "defaults write /Library/Preferences/com.apple.QuickTime \"Pro Key\" -dict-add 'Name' 'YOURNAME' 'Registration Key' 'YOURKEY'"
end