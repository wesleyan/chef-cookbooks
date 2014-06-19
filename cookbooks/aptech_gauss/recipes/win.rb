#
# Cookbook Name:: aptech_gauss
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

windows_package "Aptech Gauss" do
	source "http://ims-chef.wesleyan.edu/windows/aptech_gauss/GAUSS_12_Win_64.msi"
	checksum "077dec7c58d0c7e900e65dd6cabe989cd0bac60597976d34269ac2db410d0521"
	version '12.0.0'
end

file 'C:\gauss12\temporary.lic' do
	action :delete
end

cookbook_file 'C:\gauss12\client.lic'

ruby_block 'KiTTY Directories' do
	block do
		::Dir.mkdir 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Gauss' unless ::Dir.exists? 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Gauss'
	end
end

windows_shortcut "Add Gauss to Start Menu" do
	name 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Gauss\Gauss.lnk'
	description "Launches Gauss"
	cwd 'C:\gauss12\\'
	target 'C:\gauss12\gauss.exe'
end