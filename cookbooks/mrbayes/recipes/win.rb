#
# Cookbook Name:: mrbayes
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

remote_file "mrbayes" do
  path "#{Chef::Config[:file_cache_path]}/MrBayes-3.2.2.zip"
  source "http://ims-chef.wesleyan.edu/windows/mrbayes/MrBayes-3.2.2.zip"
  checksum "d06f7bb2aef2dcf392af5a0a91fba6c13a935366e80b97745425a982a38fd5e4"
  backup false
end

# Directories must be created manually due to CHEF-3787
ruby_block 'MrBayes Directories' do
	block do
		::Dir.mkdir 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\MrBayes' unless ::Dir.exists? 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\MrBayes'
	end
end

execute "Unzip MrBayes" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"#{Chef::Config['file_cache_path']}\\MrBayes-3.2.2.zip\" -y -o\"C:\\Program Files\""
  not_if { ::Dir.exists? 'C:\Program Files\MrBayes'}
  action :run
end

windows_shortcut "Add MrBayes to Start Menu" do
	name 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\MrBayes\MrBayes.lnk'
	description "Launches MrBayes"
	cwd 'C:\Program Files\MrBayes'
	target 'C:\Program Files\MrBayes\mrbayes_x64.exe'
end
