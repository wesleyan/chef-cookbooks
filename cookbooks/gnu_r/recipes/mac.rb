#
# Cookbook Name:: gnu_r
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
# Install our base package.
dmg_package "R" do
  app "R"
  volumes_dir "R"
  dmg_name "R-3.1.0-mavericks"
  source "http://sw.wesleyan.edu/os_x/gnu_r/R-3.1.0-mavericks.dmg"
  checksum "52c1536053eb8cd300cabdc07e6d04cfee0f7c05b69f08bac06a9a11a4316782"
  action :install
  type "pkg"
  package_id "org.r-project.R.x86_64.fw.pkg"
  version "3.1.0"
end

# Install our packages.
%w{ RCurl twitteR doBy mvtnorm plyr stringr ggplot2 XML tm wordcloud lme4 nlme e1071 nnet
  descr reshape foreign class Ecdat psych DAAG lmtest perturb MEMSS mlmRev car ape ade4 }.each do |r_pkg|
  gnu_r_packages r_pkg do
    action :osx_install
  end
end

# Update our installed packages, if available.
gnu_r_packages "update" do
	action :osx_update
end

# Create dock folder, if it does not exist
dock_add "Social Sciences" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/R.app" do
  all_users true
  group "Social Sciences"
end

