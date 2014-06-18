#
# Cookbook Name:: winscp
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

windows_package "WinSCP" do  
  source 'http://ims-chef.wesleyan.edu/windows/winscp/winscp517setup.exe'
  checksum '2ed2317bfff8a1bd1418a7cb89de17d3899ccd2aa69ebf09541b47f8895488cb'
  version "5.1.7"
end
