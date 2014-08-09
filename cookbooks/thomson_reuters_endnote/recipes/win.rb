#
# Cookbook Name:: thomson_reuters_endnote
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

#cookbook_file "#{Chef::Config['file_cache_path']}\\License.dat"

windows_package "Endnote X7" do
  source "http://ims-chef.wesleyan.edu/windows/thomson_reuters_endnote/ENX7Inst.msi"
  checksum "05659637be23cb42fe699a67b21aa39dfcb6bb15efd4d2a52c6e183fa85412af"
  version "7.0.1"
end