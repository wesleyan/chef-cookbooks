#
# Cookbook Name:: atgc_phyml
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Include homebrew because we need it!
include_recipe "homebrew"

# Tap the homebrew science repository.
homebrew_tap "homebrew/science"

# Install PhyML via homebrew
package "phyml" do
  version "20120412"
end