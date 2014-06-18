#
# Cookbook Name:: rasmol
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

# Register popup on start

remote_file 'Download RasMol' do
	source 'http://ims-chef.wesleyan.edu/windows/rasmol/RasMol.zip'
	path 'C:\TEMP\RasMol.zip'
	checksum 'e87415d119702e4818e2d17647ffa026449161bc95ffe6ebdcc529b7b800e57e'	
	backup false
end

execute "Expand RasMol" do
	command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\RasMol.zip" -y -o"C:\Program Files (x86)"'
end