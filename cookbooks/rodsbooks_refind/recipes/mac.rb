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
execute "unzip /tmp/refind-bin-0.7.4.zip -d /tmp/" do
  not_if { ::File.exists? "/tmp/refind-bin-0.7.4" }
end

# Run the install script.
execute "/tmp/refind-bin-0.7.4/install.sh && touch /var/db/receipts/com.rodsbooks.refind.plist" do
  not_if { ::File.exists? "/var/db/receipts/com.rodsbooks.refind.plist"
end
