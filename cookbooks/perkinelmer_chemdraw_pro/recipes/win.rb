#
# Cookbook Name:: perkinelmer_chemdraw_pro
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

windows_package "PerkinElmer ChemDraw Pro" do
	source "http://ims-chef.wesleyan.edu/windows/perkinelmer_chemdraw_pro/cdp1302.exe"
	checksum "dfa55332f9757c04410df3a994968717c153961df20ff57ebb057deef6ba3f27"
	version "13.0.2"
end