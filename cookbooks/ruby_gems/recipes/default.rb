#
# Cookbook Name:: ruby_gems
# Recipe:: default
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

%w{ sass compass }.each do |gem|
  gem_package gem
end

