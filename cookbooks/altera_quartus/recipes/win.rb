#
# Cookbook Name:: altera_quartus
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

remote_file "Download Altera Quartus II" do
  source "http://ims-chef.wesleyan.edu/windows/altera_quartus/Quartus.zip"
  path 'C:\TEMP\Quartus.zip'
  checksum "df0ea7859633c21ddbc9545e55289984e52ab36e8d2497273b310ef95073b245"
end

execute "Expand Altera Quartus II" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\Quartus.zip\" -y -o\"C:\\TEMP\""
end

windows_package "Altera Quartus" do  
  source 'C:\TEMP\altera_9.0\installer\altera_installer.exe'
  installer_type :custom
  options '-auto -target_dir:"C:\Program Files (x86)\Altera" -program_folder:"Altera"'
  version "9.0.0"
  timeout 6000 # This is a very slow installer
end
