#
# Cookbook Name:: python
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
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
