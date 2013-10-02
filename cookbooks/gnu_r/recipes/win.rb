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

# Install extra packages using R's commandline package installer
gnu_r_packages "RCurl" do
	action :win_install
end
gnu_r_packages "twitteR" do
	action :win_install
end
gnu_r_packages "doBy" do
	action :win_install
end
gnu_r_packages "mvtnorm" do
	action :win_install
end
gnu_r_packages "plyr" do
	action :win_install
end
gnu_r_packages "stringr" do
	action :win_install
end
gnu_r_packages "ggplot2" do
	action :win_install
end
gnu_r_packages "XML" do
	action :win_install
end
gnu_r_packages "tm" do
	action :win_install
end
gnu_r_packages "wordcloud" do
	action :win_install
end
gnu_r_packages "lme4" do
	action :win_install
end
gnu_r_packages "nlme" do
	action :win_install
end
gnu_r_packages "e1071" do
	action :win_install
end
gnu_r_packages "nnet" do
	action :win_install
end
gnu_r_packages "descr" do
	action :win_install
end
gnu_r_packages "reshape" do
	action :win_install
end
gnu_r_packages "foreign" do
	action :win_install
end
gnu_r_packages "class" do
	action :win_install
end
gnu_r_packages "Ecdat" do
	action :win_install
end
gnu_r_packages "Psych" do
	action :win_install
end
gnu_r_packages "DAAG" do
	action :win_install
end
gnu_r_packages "lmtest" do
	action :win_install
end
gnu_r_packages "perturb" do
	action :win_install
end
gnu_r_packages "MEMSS" do
	action :win_install
end
gnu_r_packages "mlmRev" do
	action :win_install
end
gnu_r_packages "car" do
	action :win_install
end
gnu_r_packages "ape" do
	action :win_install
end
gnu_r_packages "ade4" do
	action :win_install
end

# Check for package updates.
gnu_r_packages "update" do
	action :win_update
end

