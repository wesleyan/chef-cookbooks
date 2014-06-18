#
# Cookbook Name:: nodejs
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
# Install Node.js
dmg_package "Node.js" do
  app "node-v0.10.18"
  volumes_dir "nodejs"
  dmg_name "nodejs"
  source "http://ims-chef.wesleyan.edu/os_x/nodejs/nodejs-0.10.18.dmg"
  checksum "51643c932245bbe5dc97dce0a84e38225c6c7e6e841122bd3ef6397fa58c016b"
  action :install
  type "pkg"
  package_id "org.nodejs.node"
  version "0.10.18"
end

