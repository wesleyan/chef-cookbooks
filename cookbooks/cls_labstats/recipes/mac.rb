#
# Cookbook Name:: cls_labstats
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
# Install package
dmg_package "labstats-5.2.30708.133-client.dmg" do
  app "LabStats 5 Client"
  volumes_dir "LabStats 5 Client"
  dmg_name "labstats-5.2.30708.133-client"
  source "http://ims-chef.wesleyan.edu/os_x/cls_labstats/labstats-5.2.30708.133-client.dmg"
  checksum "49cc20835cb6911b0f982d777808a4eae83d0bd3128433099e447a45d92929df"
  action :install
  type "pkg"
  package_id "com.computerlabsolutions.labstats"
  version "5.2.30708133"
end
