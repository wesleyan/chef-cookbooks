#
# Cookbook Name:: chef
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
# Update our chef package
dmg_package "Chef Client" do
  app "chef"
  volumes_dir "chef"
  dmg_name "chef-11.12.4-1"
  source "http://ims-chef.wesleyan.edu/os_x/chef_chefclient/chef-11.12.4-1.dmg"
  checksum "eaaf2a684328d8054bbf84080952d312bbbc34f143df142162b005daf191ff03"
  action :install
  type "pkg"
  package_id "com.getchef.pkg.chef"
end