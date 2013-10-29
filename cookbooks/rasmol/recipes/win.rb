#
# Cookbook Name:: rasmol
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Register popup on start

remote_file 'Download RasMol' do
	source 'http://ims-chef.wesleyan.edu/windows/rasmol/RasMol.zip'
	path 'C:\TEMP\RasMol.zip'
	checksum 'e87415d119702e4818e2d17647ffa026449161bc95ffe6ebdcc529b7b800e57e'	
	backup false
end

execute "Expand RasMol" do
	command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\RasMol.zip" -y -o"C:\Program Files (x86)"'
end