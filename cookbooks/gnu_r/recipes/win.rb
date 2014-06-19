#
# Cookbook Name:: gnu_r
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
# Install our base package.
windows_package "R" do
  source "http://sw.wesleyan.edu/windows/gnu_r/R-3.1.0-win.exe"
  checksum "c3f11723b60972344ff87aed6b53a58209dd463e2c3286259624754b077f84e8"
  version "3.1.0"
end

# Install packages.
%w{ RCurl twitteR doBy mvtnorm plyr stringr ggplot2 XML tm wordcloud lme4 nlme e1071 nnet
  descr reshape foreign class Ecdat psych DAAG lmtest perturb MEMSS mlmRev car ape ade4 }.each do |r_pkg|
  gnu_r_packages r_pkg do
  	action :win_install
  end
end

# Check for package updates.
gnu_r_packages "update" do
	action :win_update
end

