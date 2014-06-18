#
# Cookbook Name:: edgcm
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

# Silent installer doesn't work at all, it unzips easily enough
# but we also need to capture the serial

windows_package 'EdGCM' do
	source 'http://ims-chef.wesleyan.edu/windows/edgcm/EdGCM_3.2_b926.exe'
	checksum '25767ef406b26c1f38ea3a36b6cc9a4b0913e67857da7254b692eea927281659'
	version '3.2.926'	
end