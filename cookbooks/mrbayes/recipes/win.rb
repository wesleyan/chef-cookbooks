#
# Cookbook Name:: mrbayes
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file "mrbayes" do
  path "#{Chef::Config[:file_cache_path]}/MrBayes-3.2.2.zip"
  source "http://ims-chef.wesleyan.edu/windows/mrbayes/MrBayes-3.2.2.zip"
  checksum "d06f7bb2aef2dcf392af5a0a91fba6c13a935366e80b97745425a982a38fd5e4"
  backup false
end

# Directories must be created manually due to CHEF-3787
ruby_block 'MrBayes Directories' do
	block do
		::Dir.mkdir 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\MrBayes' unless ::Dir.exists? 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\MrBayes'
	end
end

execute "Unzip MrBayes" do
  command "\"C:\\Program Files (x86)\\7-Zip\\7z.exe\" x \"#{Chef::Config['file_cache_path']}\\MrBayes-3.2.2.zip\" -y -o\"C:\\Program Files\""
  not_if { ::Dir.exists? 'C:\Program Files\MrBayes'}
  action :run
end

windows_shortcut "Add MrBayes to Start Menu" do
	name 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\MrBayes\MrBayes.lnk'
	description "Launches MrBayes"
	cwd 'C:\Program Files\MrBayes'
	target 'C:\Program Files\MrBayes\mrbayes_x64.exe'
end
