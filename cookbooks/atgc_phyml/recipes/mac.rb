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

# Install PhyML via homebrew
package "phyml" do
  version "20120412"
end