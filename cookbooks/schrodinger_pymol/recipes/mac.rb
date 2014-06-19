#
# Cookbook Name:: schrodinger_pymol
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

# Tap the homebrew science repo
homebrew_tap "Homebrew/homebrew-science"

#execute "Allow homebrew permissions" do
#  command "chmod 777 /usr/local/include"
#end

# Build and install PyMOL
package "pymol" do
  version "1.7.0.0"
end

# PyMOL will fail to recognize XQuartz because its timeout is too short
# so we should launch X11.app first, and sleep for a second, and then
# launch pymol, so we need an alias
execute "alias pymol" do
  command 'echo "alias pymol=\"open /Applications/Utilities/X11.app;sleep 1; /usr/local/bin/pymol\"" >> /etc/bashrc'
end


