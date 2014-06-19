#
# Cookbook Name:: chnm_zotero
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
# Install our .app!
dmg_package "Zotero" do
  app "Zotero"
  volumes_dir "Zotero"
  dmg_name "Zotero-4.0.11"
  source "http://ims-chef.wesleyan.edu/os_x/chnm_zotero/Zotero-4.0.11.dmg"
  checksum "9232c75dd1ae825a2ab1744add307e0dd7f9e99d6ed6b3f052e4cc2bc8fd9cd7"
  action :install
  type "app"
  package_id "edu.gmu.chnm.zotero"
  version "4.0.11"
end

dmg_package "Zotero Browser Plugins" do
  app "Zotero Plugins"
  volumes_dir "Zotero Plugins"
  source "http://ims-chef.wesleyan.edu/os_x/chnm_zotero/zotero_plugins.dmg"
  checksum "0a9ee7206c425b284fd924c68d1245227ea3e50c6937846c96092094aae882f7"
  action :install
  type "pkg"
  package_id "edu.gmu.chnm.zotero.plugins"
  version "4.0.8"
end

# Install Firefox add-on, current version 4.0.12
directory "/Applications/Firefox.app/Contents/MacOS/extensions"
cookbook_file "/Applications/Firefox.app/Contents/MacOS/extensions/zotero@chnm.gmu.edu.xpi" do
  mode 0777
end

directory "/Applications/Firefox.app/Contents/MacOS/defaults"
directory "/Applications/Firefox.app/Contents/MacOS/defaults/preferences"
cookbook_file "/Applications/Firefox.app/Contents/MacOS/defaults/preferences/scopes.js" do
  mode 0644
end
