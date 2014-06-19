#
# Cookbook Name:: atgc_phyml
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

# Install PhyML via homebrew
package "phyml" do
  version "20120412"
end