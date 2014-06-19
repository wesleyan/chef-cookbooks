#
# Cookbook Name:: ucsf_chimera
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
# Install our package.
windows_package 'UCSF Chimera' do
  source 'http://sw.wesleyan.edu/windows/ucsf_chimera/chimera-1.9-win64.exe'
  checksum 'e501276b4b62c6b51b786032b422b0362a995d7b3c772aa36819c0b74a2df70f'
  version '1.9.0'
end

