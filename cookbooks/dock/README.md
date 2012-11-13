Description
===========
Manages Dock on OS X

Requirements
============
Has been tested on OS X 10.8 or greater, although it may work with earlier versions

Attributes
==========

Usage
=====

Add application to the Dock for all users, then regenerate the dock plist and restart the dock:

dock_add "/Applications/Safari.app" do
	regenerate true
	restart true
	all_users true
end


Add application to the Dock for current user without restarting

dock_add "/Applications/Safari.app" 


Add group to the dock, regenerate, and restart:

dock_group_add "Microsoft Office 2011" do
	regenerate true
	restart true
end

Add application to group:

dock_add "/Applications/Microsoft Word 2011.app" do
	group "Microsoft Office 2011"
end
