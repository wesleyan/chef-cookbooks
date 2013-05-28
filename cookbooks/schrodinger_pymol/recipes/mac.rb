#
# Cookbook Name:: schrodinger_pymol
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# NOTE: Right now this recipe does not include PyMOL's external GUI.  Waiting on some pull requests to go through on homebrew's git.
#
# Include homebrew because we need it!
include_recipe "homebrew"

homebrew_tap "Homebrew/homebrew-science"

# Build and install PyMOL
package "pymol" do
  version "1.5"
end

# PyMOL will fail to recognize XQuartz because its timeout is too short
# so we should launch X11.app first, and sleep for a second, and then
# launch pymol, so we need an alias

execute "alias pymol" do
  command 'echo "alias pymol=\"open /Applications/Utilities/X11.app;sleep 1; /usr/local/bin/pymol\"" >> /etc/bashrc'
end


