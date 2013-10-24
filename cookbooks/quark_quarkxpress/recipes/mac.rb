#
# Cookbook Name:: quark_quarkxpress
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base package.
dmg_package "QuarkXPress" do
	app "QuarkXPress 9 Installer"
	volumes_dir "qxp951_mac"
	dmg_name "qxp951_mac"
	source "http://ims-chef.wesleyan.edu/os_x/quark_quarkxpress/qxp951_mac.dmg"
	checksum "b2d3740164ce0c857d83c38e858d1dbf6a99934bc424f560b844ac8173477cfe"
	action :install
	type "pkg"
	package_id "com.quark.quarkxpress.installer.quarkxpress9.QuarkXPressApplication.pkg"
end

# Install latest update.
dmg_package "QuarkXPress Update" do
	app "QuarkXPress 9 Updater"
	volumes_dir "qxp9531_mac"
	dmg_name "qxp9531_mac"
	source "http://ims-chef.wesleyan.edu/os_x/quark_quarkxpress/qxp9531_mac.dmg"
	checksum "2ca4309d97c94285966ac734911b0ea19acfb0f83ce683068668fa0ff7db864b"
	action :install
	type "mpkg"
	package_id "com.quark.quarkxpress.9.5.3.1.update"
end

# Seed client file that points to our license server.
cookbook_file "/Applications/QuarkXPress 9/QLAClient.properties" do
	source "QLAClient.properties"
	mode 00775
end

# Seed resource file that seems necessary for activation.
cookbook_file "/Applications/QuarkXPress 9/QuarkXPress.app/Contents/Resources/QuarkXPress.rsrc" do
	source "QuarkXPress.rsrc"
	mode 00755
end


# Create dock folder, if it does not exist
dock_add "Center for the Arts" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add to dock
dock_add "/Applications/QuarkXPress 9/QuarkXPress.app" do
  all_users true
  group "Center for the Arts"
end