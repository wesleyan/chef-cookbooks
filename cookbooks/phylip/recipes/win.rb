#
# Cookbook Name:: phylip
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

remote_file 'Download phylip' do
	source 'http://ims-chef.wesleyan.edu/windows/phylip/phylip-3.695.zip'
	path 'C:\TEMP\phylip-3.695.zip'
	checksum 'cc8ec4fcfc6b72271c47f889ed32863615e52a502b6e6f405f493aa05eb33a45'
	backup false
end

execute "Expand phylip" do
	command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\phylip-3.695.zip" -y -o"C:\Program Files (x86)"'
end

windows_path 'C:\Program Files (x86)\phylip\exe'