#
# Cookbook Name:: envi_idl
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

# Depends on Java, not sure how to specify recipe in metadata

windows_package "ENVI ENVI" do
	source 'http://ims-chef.wesleyan.edu/windows/envi_idl/envi50sp3win64_setup.exe'
	checksum '53b9754f2d9eb24e4bf5476c50dd9b7391f7faba0a57df7e650197d215b55a31'
	version '5.0.3'
end

remote_file "Download ENVI ENVI" do
  source "http://ims-chef.wesleyan.edu/windows/envi_idl/ENVI.zip"
  path 'C:\TEMP\ENVI.zip'
  checksum "e122759d03f96ec348b89051cbcd8e2171a0d055129f220d80f40f8fd6b9dcfb"
  backup false
end

execute "Expand ENVI ENVI" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\ENVI.zip\" -y -o\"C:\\TEMP\""
end

windows_package "ENVI ENVI" do  
  source 'C:\TEMP\envi50sp3win64_setup\ENVI50_64bit.msi'
  version "5.0.3"
end

remote_file "Download ENVI IDL" do
  source "http://ims-chef.wesleyan.edu/windows/envi_idl/IDL.zip"
  path 'C:\TEMP\IDL.zip'
  checksum "9060ec45f2f5e2fdceee2fe2b71768e06d274658b811e8156349e96bebf6a2b5"
  backup false
end

execute "Expand ENVI IDL" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"C:\\TEMP\\IDL.zip\" -y -o\"C:\\TEMP\""
end

windows_package "ENVI IDL" do  
  source 'C:\TEMP\idl82sp3win64_setup\setup64.exe'
  installer_type :installshield
  version "8.2.3"
end

execute "Set Environment Variable" do
	command 'setx LM_LICENSE_FILE 1700@idl'
end

cookbook_file 'C:\Program Files (x86)\Exelis\License'