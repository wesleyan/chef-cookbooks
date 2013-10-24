## QuarkXPress
## Max Dietz

dmg_package "QuarkXPress" do
	app "QuarkXPress 9 Installer"
	volumes_dir "qxp951_mac"
	dmg_name "quarkxpress.9.5.1"
	source "http://ims-chef.wesleyan.edu/os_x/quark_quarkxpress/quarkxpress.9.5.1.dmg"
	checksum "b2d3740164ce0c857d83c38e858d1dbf6a99934bc424f560b844ac8173477cfe"
	action :install
	type "pkg"
	package_id "com.quark.quarkxpress"
	version "9.5.1"
end

execute "Fix Quark Permissions" do
   command "chmod -R g+r '/Applications/QuarkXPress 9/'"
end

#dmg_package "QuarkXPress" do
#	app "QuarkXPress 9 Updater"
#	volumes_dir "qxp9511_mac"
#	dmg_name "quarkxpress.9.5.11"
#	source "http://ims-chef.wesleyan.edu/os_x/quark_quarkxpress/quarkxpress.9.5.11.dmg"
#	checksum "01efe03f8d176d7a930ff262b0fee79075a6ed139b5713cdac6a939b58f38cce"
#	action :install
#	type "mpkg"
#	package_id "com.quark.quarkxpress"
#	version "9.5.11"
#end

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