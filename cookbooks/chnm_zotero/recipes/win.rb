#
# Cookbook Name:: chnm_zotero
# Recipe:: win
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

remote_file "Download Zotero" do
  source 'http://ims-chef.wesleyan.edu/windows/chnm_zotero/Zotero.zip'
  path 'C:\TEMP\Zotero.zip'
  checksum '90e3b92c0e9377afeadf11dde747cd294f8a976bac3a701ea1e8ff9e489ecfba'
end

execute "Expand Zotero" do
  command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\Zotero.zip" -y -o"C:\TEMP"'
end

windows_package "Zotero" do
  source 'C:\TEMP\Zotero-4.0.16_setup\setup.exe'
  version "4.0.16"
end

ruby_block 'Zotero for Firefox Directories' do
  block do
    ::Dir.mkdir 'C:\Program Files (x86)\Mozilla Firefox\extensions' unless ::Dir.exists? 'C:\Program Files (x86)\Mozilla Firefox\extensions'
    ::Dir.mkdir 'C:\Program Files (x86)\Mozilla Firefox\defaults' unless ::Dir.exists? 'C:\Program Files (x86)\Mozilla Firefox\defaults'
    ::Dir.mkdir 'C:\Program Files (x86)\Mozilla Firefox\defaults\preferences' unless ::Dir.exists? 'C:\Program Files (x86)\Mozilla Firefox\defaults\preferences'
  end
end

# Install Firefox add-on, current version 4.0.12
cookbook_file 'C:\Program Files (x86)\Mozilla Firefox\extensions\zotero@chnm.gmu.edu.xpi'
cookbook_file 'C:\Program Files (x86)\Mozilla Firefox\defaults\preferences\scopes.js'