#
# Cookbook Name:: artstor_oiv
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
# Install the app from a .dmg
dmg_package "ARTstor OIV" do
  app "OIV"
  volumes_dir "OIV"
  dmg_name "OIV-3.1.3"
  source "http://ims-chef.wesleyan.edu/os_x/artstor_oiv/OIV-3.1.3.dmg"
  checksum "f78e196df8bb4cb293a06d5e70bff6012539c04cc680162aa644d179ef05708"
  action :install
  type "app"
  package_id "com.artstor.oiv"
  version "3.1.3"
end

#dock_add "/Applications/OIV.app" do
#  all_users true
#  group "OIV"
#  only_if { node['oiv']['dock'] }
#end
