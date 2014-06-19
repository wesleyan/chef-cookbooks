#
# Cookbook Name:: ocsinventory_ng
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
dmg_package "OCS Inventory NG" do
  app "WesOCSNGAgent"
  volumes_dir "WesOCSNGAgent"
  dmg_name "ocsngagent-2.1rc1-wesleyan"
  source "http://ims-chef.wesleyan.edu/os_x/ocsinventory_ng/ocsngagent-2.1rc1-wesleyan.dmg"
  checksum "69a4846ed0ab1d7fca155a86bd54108f4baeea0d8a848500d72157038e1a39ac"
  action :install
  type "mpkg"
  package_id "edu.wesleyan.wesocsngagent.OcsinventoryAgentMacOSX.pkg"
end
