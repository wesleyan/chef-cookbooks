#
# Cookbook Name:: dpgraph
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

ruby_block 'DPGraph Directories' do
	block do
		::Dir.mkdir 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\DPGraph' unless ::Dir.exists? 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\DPGraph'
	end
end

remote_file "Download DPGraph" do
	source "http://ims-chef.wesleyan.edu/windows/dpgraph/DPGraph.zip"
	path 'C:\TEMP\DPGraph.zip'
	checksum '1c546050f6defa28195c63e6c97f113063368d48cf1b12b8f08dd11e00a14893'
	backup false
end

execute "Expand DPGraph" do
  command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\DPGraph.zip" -y -o"C:\Program Files (x86)"'
end

windows_shortcut "Add DPGraph to Start Menu" do
	name 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\DPGraph\DPGraph.lnk'
	description "Launches DPGraph"
	cwd 'C:\Program Files (x86)\DPGraph\\'
	target 'C:\Program Files (x86)\DPGraph\dpgraph.exe'
end
