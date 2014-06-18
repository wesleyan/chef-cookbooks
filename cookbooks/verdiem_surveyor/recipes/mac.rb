#
# Cookbook Name:: verdiem_surveyor
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
dmg_package "Verdiem Surveyor" do
  app "SurveyorAgent"
  volumes_dir "SurveyorAgent"
  dmg_name "SurveyorAgent-6.0.505.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/verdiem_surveyor/SurveyorAgent-6.0.505.dmg"
  checksum "cb2d1223aebcea55c29060cdd124ce3c6b64a56b52aa32bea050d6472f233f95"
  action :install
  type "pkg"
  package_id "com.verdiem.surveyor"
  version "6.0.505"
end