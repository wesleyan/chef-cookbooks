#
# Cookbook Name:: python
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
# Include homebrew, since we're using it extensively.
include_recipe "homebrew"

# Tap the homebrew dupes repo
homebrew_tap "homebrew/dupes"

# Install Tcl/Tk, needed for PyMOL.
package "tcl-tk" do
  version "8.6.1"
  options "--enable-threads --with-x11"
end


# Install python with Tk extensions, needed for PyMOL.
package "python" do
  version "2.7.7"
  options "--with-brewed-tk"
end

# Install Python3
package "python3" do
  version "3.4.1"
end

# Link our apps!
execute "brew linkapps" do
  user 'administrator'
end

# Add python to the system path.
ruby_block "Add homebrew python to system path" do
	block do
		content = ''
		::File.open("/etc/bashrc", "r") do |f|
			content = f.read()
		end
		unless content =~ /export PATH=\/usr\/local\/share\/python:$PATH/
			::File.open("/etc/bashrc", "a") do |f|
				f.puts "export PATH=/usr/local/share/python:$PATH"
			end
		end
	end
end
