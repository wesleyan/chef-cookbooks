#
# Cookbook Name:: hypercube_hyperchem
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

remote_file "Download HyperChem" do
	source "http://ims-chef.wesleyan.edu/windows/hypercube_hyperchem/HyperChem.zip"
	backup false
	checksum "73c1962901ab067b94e6635ffafd6eb06270782f504edb79f77000edf8117961"
	path 'C:\TEMP\HyperChem.zip'
end

execute "Expand HyperChem" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\HyperChem.zip\" -y -o\"C:\\TEMP\""
  action :run
end

# Install our package
windows_package "HyperCube HyperChem" do
	source "C:\\TEMP\\Hyper75\\setup.exe"
	version "7.5.0"
end

execute "Set License Server" do
	command "setx LSFORCEHOST fozzy.wesleyan.edu"
end