#
# Cookbook Name:: blackboard_xythosdrive
# Recipe:: mac
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
# Install package
dmg_package 'Blackboard XythosDrive' do
  app 'Xythos Drive'
  volumes_dir 'Xythos Drive for Mac'
  dmg_name 'xythosdrive-1.6.15648'
  source 'http://sw.wesleyan.edu/os_x/blackboard_xythosdrive/xythosdrive-1.6.15648.dmg'
  checksum '3e0a4b35ed58d491e8945056b737bcf34ad79e7c1c5fcadae94b48f997c52a9b'
  action :install
  type 'pkg'
  package_id 'com.xythos.drive.xdcore.pkg'
  version '1.6.15648'
end
