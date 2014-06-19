#
# Cookbook Name:: rockware_igpet
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

remote_file 'Download Rockware IgPet' do
	source 'http://ims-chef.wesleyan.edu/windows/rockware_igpet/SetupIgpet2012.exe'
	path 'C:\TEMP\SetupIgpet2012.exe'
	checksum '18207e4ad052cbcb9cd431071a3db84bc95754592e8f00dec6beb7c19f90ae12'
	backup false
end

remote_file 'Download Rockware IgPet License' do
	source 'http://ims-chef.wesleyan.edu/windows/rockware_igpet/license.txt'
	path 'C:\TEMP\license.txt'
	checksum '930f0a7aa6320ae9dbbc0c87b3292df63d07244d2e46af4799f3fbfb7ea8e896'
	backup false
end

windows_package 'Rockware IgPet' do
  source 'C:\TEMP\SetupIgpet2012.exe'
  version '2012.0.0'
end