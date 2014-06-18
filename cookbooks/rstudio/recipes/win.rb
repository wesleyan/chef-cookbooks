#
# Cookbook Name:: rstudio
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
# Install our package.
windows_package "RStudio" do
  source "http://sw.wesleyan.edu/windows/rstudio/RStudio-0.98.507.exe"
  checksum "ef72678d487aee6e1527c5f9f90f1d2c1f8e94a02c5fd2b00a30cd8b947e211b"
  version "0.98.507"
end