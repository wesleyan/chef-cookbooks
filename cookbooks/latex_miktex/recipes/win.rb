#
# Cookbook Name:: latex_miktex
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

windows_package "LaTeX MiKTeX" do
	source "http://ims-chef.wesleyan.edu/windows/latex_miktex/basic-miktex-2.9.4813-x64.exe"
	checksum "e75e3f6ef73b7552d67b4006f21c93a128f344c6b660dcde6793d523e053cfad"
	version "2.9.4813"
	installer_type :custom
	options "--unattended --shared"
end

windows_package "LaTeX TeXMaker" do
	source "http://ims-chef.wesleyan.edu/windows/latex_miktex/texmakerwin32_install.exe"
	checksum "b25097cc3df87a1da8ba11a87e3446c9055183565812933e82a93dc45a692b9c"
	version "4.0.4"
end
