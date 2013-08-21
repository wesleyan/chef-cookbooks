#
# Cookbook Name:: thomson_reuters_endnote
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install the .app
dmg_package "Thomson Reuters EndNote X7" do
  app "EndNote X7"
  volumes_dir "EndNote X7 Installer"
  dmg_name "endnote_x7_site-17.0.1"
  source "http://ims-chef.wesleyan.edu/os_x/thomson_reuters_endnote/endnote_x7_site-17.0.1.dmg"
  checksum "ca4441db0535e768d4060fee5454463de60c773de141ebc31d2289882ca927d8"
  action :install
  type "dir"
  package_id "com.endnote.x7"
  version "17.0.1"
end

# Install the license file inside the EndNote directory
cookbook_file "/Applications/EndNote X7/.license.dat" do
  mode 0644
end

# Copy the plug-in from a directory inside EndNote to the Word 2011 plug-in directory.
execute "EndNote X7 Word Plug-in" do
  command "rsync --recursive --links --perms --executability --owner --group --times '/Applications/EndNote X7/Cite While You Write/EndNote CWYW Word 2011.bundle' '/Applications/Microsoft Office 2011/Office/Startup/Word'"
end

# Create directory for the EndNote Pages plug-in
directory "/System/Library/Application Support/ResearchSoft/EndNote/Plugins" do
  mode 00755
  action :create
  recursive true
end

# Copy the EndNote Pages plug-in.
execute "EndNote X7 Pages Plug-in" do
  command "rsync --recursive --links --perms --executability --owner --group --times '/Applications/EndNote X7/Cite While You Write/PagesEndNote.bundle' '/System/Library/Application Support/ResearchSoft/EndNote/Plugins/'"
end

# Copy the EndNote service to the default user profile.
execute "EndNote X7 Service" do
  command "rsync --recursive --links --perms --executability --owner --group --times '/Applications/EndNote X7/Services/ENService.app' '/System/Library/User Template/English.lproj/Library/Services/'"
end

# And finally, copy the EndNote plist file to the default user profile to suppress first launch dialogues.
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.ThomsonResearchSoft.EndNote.plist" do
  mode 0600
end


