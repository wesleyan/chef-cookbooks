#
# Cookbook Name:: launch_association
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Include homebrew because we need it!
include_recipe "homebrew"

# Install duti via homebrew
package "duti" do
  version "1.5.2"
end