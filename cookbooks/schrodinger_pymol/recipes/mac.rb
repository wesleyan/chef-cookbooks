#
# Cookbook Name:: schrodinger_pymol
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
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


