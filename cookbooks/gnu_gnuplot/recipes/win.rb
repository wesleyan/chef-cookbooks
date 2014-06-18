#
# Cookbook Name:: gnu_gnuplot
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

windows_package "GNU GNUPlot" do
  source "http://ims-chef.wesleyan.edu/windows/gnu_gnuplot/gp463-win32-setup.exe"
  checksum "e803c4ff782fd1b7988eba6193462f7b31d7d34a6fd99ac297bea951b1a62407"
  version "4.6.3"
end
