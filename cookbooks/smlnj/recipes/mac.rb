#
# Cookbook Name:: smlnj
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Include homebrew because we need it!
include_recipe "homebrew"

# Install SML/NJ via homebrew
package "smlnj" do
  version "110.76"
end

