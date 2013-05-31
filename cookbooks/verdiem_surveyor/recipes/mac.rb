#
# Cookbook Name:: verdiem_surveyor
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Surveyor
dmg_package "SurveyorAgent-6.0.505.dmg" do
  app "SurveyorAgent"
  volumes_dir "SurveyorAgent"
  dmg_name "SurveyorAgent-6.0.505.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/verdiem_surveyor/SurveyorAgent-6.0.505.dmg"
  checksum "cb2d1223aebcea55c29060cdd124ce3c6b64a56b52aa32bea050d6472f233f95"
  action :install
  type "pkg"
  package_id "com.verdiem.surveyor"
end
