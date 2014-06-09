#
# Cookbook Name:: gnu_r
# Recipe:: win
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our base package.
windows_package "R" do
  source "http://sw.wesleyan.edu/windows/gnu_r/R-3.1.0-win.exe"
  checksum "c3f11723b60972344ff87aed6b53a58209dd463e2c3286259624754b077f84e8"
  version "3.1.0"
end

# Install packages.
%w{ RCurl twitteR doBy mvtnorm plyr stringr ggplot2 XML tm wordcloud lme4 nlme e1071 nnet
  descr reshape foreign class Ecdat psych DAAG lmtest perturb MEMSS mlmRev car ape ade4 }.each do |r_pkg|
  gnu_r_packages r_pkg do
  	action :win_install
  end
end

# Check for package updates.
gnu_r_packages "update" do
	action :win_update
end

