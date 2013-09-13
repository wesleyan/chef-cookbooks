#
# Cookbook Name:: rodsbooks_refind
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Download the rEFInd installer from the cookbook
cookbook_file "/tmp/refind-bin-0.7.4.zip"

# Unzip the installer and run the install script.
execute "unzip /tmp/refind-bin-0.7.4.zip && /tmp/refind-bin-0.7.4/install.sh"