#
# Cookbook Name:: mozilla_firefox
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
# 

windows_package "Mozilla Firefox" do
  source "http://ims-chef.wesleyan.edu/windows/mozilla_firefox/FirefoxESR24.1.1.exe"
  installer_type :custom
  options "-ms"
  version "24.1.1"
  checksum "5ce1bbdba260e3ca4f1d0ff8fc5e60168b04d832294df985612dd0d70c38016a"
end

# suppress import settings
cookbook_file 'C:\Program Files (x86)\Mozilla Firefox\override.ini'

# import CCK addon
ruby_block 'KiTTY Directories' do
  block do
    ::Dir.mkdir 'C:\Program Files (x86)\Mozilla Firefox\distribution' unless ::Dir.exists? 'C:\Program Files (x86)\Mozilla Firefox\distribution'
    ::Dir.mkdir 'C:\Program Files (x86)\Mozilla Firefox\distribution\bundles' unless ::Dir.exists? 'C:\Program Files (x86)\Mozilla Firefox\distribution\bundles'
  end
end

cookbook_file 'C:\TEMP\firefox.zip' do
  mode 0666
end

execute "Expand" do
  command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\firefox.zip" -y -o"C:\Program Files (x86)\Mozilla Firefox\distribution\bundles"'
end