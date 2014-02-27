#
# Cookbook Name:: microsoft_office
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistrib
#
# Pull down the Office 2013 zip we've created.
remote_file "Microsoft Office 2013" do
	source "http://ims-chef.wesleyan.edu/windows/microsoft_office/microsoft_office_2013_professional_plus.zip"
	backup false
	checksum "03a790e9626b9de0e0717047cfe313701d2c4ca24457bce6c92ffbf78d537630"
	path "#{Chef::Config['file_cache_path']}/microsoft_office_2013_professional_plus.zip"
end

directory "#{Chef::Config['file_cache_path']}/microsoft_office"

# Extract our Office 2013 zip file using 7-Zip
execute "expand office" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"#{Chef::Config['file_cache_path']}\\microsoft_office_2013_professional_plus.zip\" -y -o\"#{Chef::Config['file_cache_path']}\\microsoft_office\""
  action :run
end

# Install our package
windows_package "Install Microsoft Office 2013" do
	source "#{Chef::Config['file_cache_path']}\\microsoft_office\\setup.exe"
	package_name "com.microsoft.office"
	version "15.0.4420"
	installer_type :custom
	action :install
end