#
# Cookbook Name:: gnu_r
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our base package
windows_package "R" do
  source "http://ims-chef.wesleyan.edu/windows/gnu_r/R-3.0.2-win.exe"
  checksum "e262f573bccd4b6be23002ef44dd25e3228535530da75ee6c62921675bb66fdb"
  version "3.0.2"
end

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

