#
# Cookbook Name:: mathworks_matlab
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

cookbook_file 'C:\TEMP\license.dat'

remote_file 'Download Mathworks MATLAB' do
  source "http://ims-chef.wesleyan.edu/windows/mathworks_matlab/matlab_2013a.zip"
  path 'C:\TEMP\MATLAB.zip'
  backup false
  checksum "1ffc488d529ef41dc23f621ffe87a04039d13b33cdbeca1eea7342340ebb2e23"
end

execute "expand matlab" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\MATLAB.zip\" -y -o\"C:\\TEMP"
  action :run
end

windows_package "Mathworks MATLAB" do
  source 'C:\TEMP\matlab_2013a\setup.exe'
  installer_type :custom
  options '-inputFile C:\TEMP\matlab_2013a\installer_input.txt'
  version "9.1.0"
end