#
# Cookbook Name:: ncsu_bioedit
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

remote_file "Download NCSU BioEdit" do
	source 'http://ims-chef.wesleyan.edu/windows/ncsu_bioedit/BioEdit.zip'
	path 'C:\TEMP\BioEdit.zip'
	checksum 'b5a7096c3951fac574eed259af60989841cb99ede6264cc8b8dd880e7b3b35aa'
	backup false
end

execute "Expand NCSU BioEdit" do
	command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\BioEdit.zip" -y -o"C:\TEMP"'
end

windows_package 'NCSU BioEdit' do
	source 'C:\TEMP\bioedit\BioEdit.msi'
	version '7.2.3'
end