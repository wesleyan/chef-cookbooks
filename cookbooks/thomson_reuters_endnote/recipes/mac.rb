#
# Cookbook Name:: thomson_reuters_endnote
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
# Install the .app
dmg_package "Thomson Reuters EndNote X7" do
  app "EndNote X7"
  volumes_dir "EndNote X7.1 Installer"
  dmg_name "endnote_x7_site-17.1"
  source "http://sw.wesleyan.edu/os_x/thomson_reuters_endnote/endnote_x7_site-17.1.dmg"
  checksum "a484780bdf2ad5f89efe3fde8a4947bf977b910b7a47f6d734885b86f664a127"
  action :install
  type "dir"
  package_id "com.endnote.x7"
  version "17.1.0"
end

