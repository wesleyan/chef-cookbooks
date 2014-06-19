#
# Cookbook Name:: smart_notebook
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
# Install our package
dmg_package "SMART Notebook" do
  app "SMART Notebook"
  volumes_dir "SMART Notebook"
  dmg_name "smart_notebook-11.2.482"
  source "http://ims-chef.wesleyan.edu/os_x/smart_notebook/smart_notebook-11.2.482.dmg"
  checksum "e494b8ddec9c7c80f19a0ca14612828fe380a51d8b5232e0cf8c6dac788bd9af"
  action :install
  type "pkg"
  package_id "com.smarttech.notebook.custom"
  version "11.2.482"
end