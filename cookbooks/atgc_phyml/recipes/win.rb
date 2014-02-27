#
# Cookbook Name:: atgc_phyml
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Directories must be created manually due to CHEF-3787

ruby_block 'PhyML Directories' do
	block do
		::Dir.mkdir 'C:\Program Files (x86)\ATGC' unless ::Dir.exists? 'C:\Program Files (x86)\ATGC'
		::Dir.mkdir 'C:\Program Files (x86)\ATGC\PhyML' unless ::Dir.exists? 'C:\Program Files (x86)\ATGC\PhyML'
		::Dir.mkdir 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\ATGC' unless ::Dir.exists? 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\ATGC'
		::Dir.mkdir 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\ATGC\PhyML' unless ::Dir.exists? 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\ATGC\PhyML'
	end
end

remote_file "ATGC PhyML" do  
  source 'http://ims-chef.wesleyan.edu/windows/atgc_phyml/PhyML-3.1_win32.exe'
  path 'C:\Program Files (x86)\ATGC\PhyML\PhyML-3.1_win32.exe'
  checksum '941c1f84288ff894337d44c30a971024d2a6765267409167fa0efe9250ae5431'
  backup false
end

remote_file "ATGC PhyML (Start Script)" do  
  source 'http://ims-chef.wesleyan.edu/windows/atgc_phyml/phyml.bat'
  path 'C:\Program Files (x86)\ATGC\PhyML\phyml.bat'
  checksum '06340d26bb571dc03a7f015716c7530228b819dcf41708ac79267784443d4528'
  backup false
end

windows_shortcut "Add PhyML to Start Menu" do
	name 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\ATGC\PhyML\PhyML.lnk'
	description "Launches PhyML"
	cwd 'C:\Program Files (x86)\ATGC\PhyML\\'
	target 'C:\Program Files (x86)\ATGC\PhyML\phyml.bat'
end