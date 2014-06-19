#
# Cookbook Name:: python
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
# Install Python
windows_package "Python 2.7" do
  source "http://ims-chef.wesleyan.edu/windows/python/python-2.7.5.msi"
  version "2.7.5"
end

# Install Python 3
windows_package "Python 3.3" do
  source "http://ims-chef.wesleyan.edu/windows/python/python-3.3.2.msi"
  version "3.3.2"
end