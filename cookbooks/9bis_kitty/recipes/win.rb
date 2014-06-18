#
# Cookbook Name:: 9bis_kitty
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

# Directories must be created manually due to CHEF-3787

ruby_block 'KiTTY Directories' do
	block do
		::Dir.mkdir 'C:\Program Files (x86)\KiTTY' unless ::Dir.exists? 'C:\Program Files (x86)\KiTTY'
		::Dir.mkdir 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\KiTTY' unless ::Dir.exists? 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\KiTTY'
	end
end

remote_file "KiTTY" do
	source "http://ims-chef.wesleyan.edu/windows/9bis_kitty/kitty.exe"
	path "C:\\Program Files (x86)\\KiTTY\\kitty.exe"
	checksum "378d5fa314ee6e10f6071dd5cb37686bb4224d1c10e6577e97d72eb254a5da63"
	backup false
end

windows_shortcut "Add KiTTY to Start Menu" do
	name 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\KiTTY\KiTTY.lnk'
	description "Launches KiTTY, an SSH/Telnet Agent for Windows"
	cwd 'C:\Program Files (x86)\KiTTY\\'
	target 'C:\Program Files (x86)\KiTTY\kitty.exe'
end