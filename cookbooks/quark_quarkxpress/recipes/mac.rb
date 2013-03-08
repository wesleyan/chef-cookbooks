# place com.***.setup.plist to /System/Library/User Template/English.lproj/QuarkXPress/....
# place the QLAClient.prop file from dragon to /Applications/QuarkXPress 9/QLAClient.properties

dmg_package "QuarkXPress" do
	app "QuarkXPress 9 Installer"
	volumes_dir "qxp931_mac"
	dmg_name "qxp931_mac"
	source "http://baratheon.class.wesleyan.edu/os_x-10.8/quark_quarkxpress/qxp931_mac.dmg"
	checksum "c46909fdda08efbbf08f2d936c5e1cceb721f00cced068e50bb6a2366b0240f3"
	action :install
	type "pkg"
	package_id "com.quark.QuarkXPress"
	version "9.3.1"
end

dmg_package "Upgrade QuarkXPress to 9.5" do
	app "QuarkXPress 9 Installer"
	volumes_dir "qxp95_mac"
	dmg_name "qxp95_mac"
	source "http://baratheon.class.wesleyan.edu/os_x-10.8/quark_quarkxpress/qxp95_mac.dmg"
	checksum "de9dac92426fbc9148651f410b73e3870b543a00b17ead1d61f20b425f0f92b0"
	action :install
	type "pkg"
	package_id "com.quark.QuarkXPress"
	version "9.5"
end

directory "/System/Library/User Template/English.lproj/QuarkXPress" do
	owner "root"
	group "wheel"
	mode 0777
	action :create
end

cookbook_file "/System/Library/User Template/English.lproj/QuarkXPress/com.quark.quarkxpress.9.setup.plist" do
	source "com.quark.quarkxpress.9.setup.plist"
	owner "root"
	group "wheel"
	mode 00777
end

cookbook_file "/Applications/QuarkXPress 9/QLAClient.properties" do
	source "QLAClient.properties"
	owner "root"
	group "wheel"
	mode 00766
end
