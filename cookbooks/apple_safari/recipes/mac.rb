#
# Cookbook Name:: safari
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Since the latest Safari (6.0.3) is included in 10.8.3, we don't install safari for now, but do customizations further below
#dmg_package "safari-6.0.2.dmg" do
#  app "Safari6.0.2Mountain"
#  volumes_dir "Safari"
#  dmg_name "safari-6.0.2"
#  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_safari/safari-6.0.2.dmg"
#  checksum "b77f25504e9a8a1231bd54e67ad00fd04a4be05681d66e571c5bf13576d5ecba"
#  action :install
#  type "pkg"
#  package_id "com.apple.pkg.Safari6.0.2Mountain"
#end

# Add to dock
dock_add "/Applications/Safari.app" do
  all_users true
#  restart true
end