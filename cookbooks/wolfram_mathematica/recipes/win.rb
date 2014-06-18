#
# Cookbook Name:: wolfram_mathematica
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
# Install base .app file
windows_package "Wolfram Mathematica" do
  source "http://ims-chef.wesleyan.edu/windows/wolfram_mathematica/Mathematica_9.0.0_WIN.exe"
  checksum "9f38ec737bab493bdff3d487d3cf537c311ddaa90ce3a9dab6155b2691878e96"
  version "9.0.0"
end

# Create license file
directory "C:\\ProgramData\\Mathematica\\Licensing" do
  recursive true
end

cookbook_file "C:\\ProgramData\\Mathematica\\Licensing\\mathpass"
