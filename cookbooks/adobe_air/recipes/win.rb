#
# Cookbook Name:: adobe_air
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

remote_file "Download Adobe AIR" do
  source 'http://ims-chef.wesleyan.edu/windows/adobe_air/AdobeAIR.zip'
  path 'C:\TEMP\AdobeAIR.zip'
  checksum '0ae08056227e9773bca0f8d051bf0e0ee4c597cd0231f3d87cfeaca272e76bb2'
  backup false
end

execute "Expand Adobe AIR" do
  command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\AdobeAIR.zip" -y -o"C:\TEMP"'
end

windows_package "Adobe AIR" do
  source 'C:\TEMP\AdobeAIRInstaller\setup.msi'
  version "3.9.0"
end
