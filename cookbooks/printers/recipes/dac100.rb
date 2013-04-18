#
# Cookbook Name:: printers
# Recipe:: dac100
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Assumes the mac.rb was already executed

# copies color/luster preferences
cookbook_file "/Library/ColorSync/Profiles/Displays/iMac Calibrated April 18 2013.icc" do
  mode 0644
end

cookbook_file "/Library/ColorSync/Profiles/DAC100 Spring 2013 3880 Inkpress Luster.icc" do
  mode 0644
end

printers "DAC100-E3880-1" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Epson Stylus Pro 3880.gz"
  ip "DAC100-E3880-1.class.wesleyan.edu"
end

printers "DAC100-E3880-2" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Epson Stylus Pro 3880.gz"
  ip "DAC100-E3880-2.class.wesleyan.edu"
end

printers "DAC100-E3880-3" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Epson Stylus Pro 3880.gz"
  ip "DAC100-E3880-3.class.wesleyan.edu"
end

printers "DAC100-9800" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Stylus Pro 9800.gz"
  ip "DAC100-E9800.class.wesleyan.edu"
end

printers "Set Default #{node['printers']['default']}" do
  name node['printers']['default']
  only_if { node['printers']['default'] }
  action :set_default
end