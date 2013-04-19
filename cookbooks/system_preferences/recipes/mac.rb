#
# Cookbook Name:: system_preferences
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#


## enable keyboard, disable TimeMachine, Wireless
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.systemuiserver.plist"