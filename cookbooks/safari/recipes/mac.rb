#
# Cookbook Name:: safari
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Package
dmg_package "safari-6.0.2.dmg" do
  app "Safari6.0.2Mountain"
  volumes_dir "Safari"
  dmg_name "safari-6.0.2"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_safari-6/safari-6.0.2.dmg"
  checksum "51da3cd7ff88ce1c4b9840c6abcba48097ed54330c14639b0a59ba3f1006e138"
  action :install
  type "pkg"
  package_id "com.apple.pkg.Safari6.0.2Mountain"
end

# Add to dock
dock_add "/Applications/Safari.app" do
  all_users true
#  restart true
end