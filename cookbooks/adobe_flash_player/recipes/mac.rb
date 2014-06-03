#
# Cookbook Name:: adobe_flash_player
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our package.
dmg_package "Adobe Flash Player" do
  app "AdobeFlashPlayer"
  volumes_dir "AdobeFlashPlayer"
  dmg_name "adobeflashplayer-13.0.0.214"
  source "http://sw.wesleyan.edu/os_x/adobe_flash_player/adobeflashplayer-13.0.0.214.dmg"
  checksum "0e3214aee4032c66f417bda0dd66f656caf825c824bcb3d44fb4c39cf5cbc3e5"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.FlashPlayer"
  version "13.0.0214"
end

# Create directory for mms.cfg
directory "/Library/Application Support/Macromedia" do
  owner "root"
  group "admin"
  mode 00777
  action :create
end

# Seed file that disables automatic updates.
cookbook_file "/Library/Application Support/Macromedia/mms.cfg" do
  mode 0644
end