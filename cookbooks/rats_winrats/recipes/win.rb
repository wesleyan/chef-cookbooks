#
# Cookbook Name:: rats_winrats
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

remote_file 'Download WinRats (zipped)' do
	source 'http://ims-chef.wesleyan.edu/windows/rats_winrats/WinRats.zip'
	path 'C:\TEMP\WinRats.zip'
	checksum 'ebef95143e74d1e0ac665346aebd57aa09de4a3cb2d3d9b3872bcccef0ef1450'
end

execute "Extract WinRats" do
	command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\WinRats.zip" -y -o"C:\TEMP"'
end

windows_package "Rats WinRats" do
	source 'C:\TEMP\WinRats\WinRATS 7.00.msi'
	version '7.0.0'
end