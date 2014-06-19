#
# Cookbook Name:: mrbayes
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
# Include homebrew because we need it!
include_recipe "homebrew"

# Tap the homebrew science repository.
homebrew_tap "homebrew/science"

# Install MrBayes via homebrew
package "mrbayes" do
  version "3.2.2"
end

# Legacy binary install, keeping here just-in-case.
#dmg_package "MrBayes-3.2.1_installer_MAC.dmg" do
#  app "MrBayes-3.2.1_installer_MAC"
#  volumes_dir "MrBayes"
#  dmg_name "MrBayes-3.2.1_installer_MAC"
#  source "http://ims-chef.wesleyan.edu/os_x/mrbayes/MrBayes-3.2.1_installer_MAC.dmg"
#  checksum "696f218e9e65dbc48b4316b51c40755952b443d09c7326b27219a84dc163fce0"
#  action :install
#  type "pkg"
#  package_id "org.NRM.mrbayesV32.mb.pkg"
#end
