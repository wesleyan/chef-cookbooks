#
# Cookbook Name:: rodsbooks_refind
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Download the rEFInd installer from the cookbook
cookbook_file "/tmp/refind-bin-0.7.8.zip"

# Unzip the installer and run the install script.
execute "unzip /tmp/refind-bin-0.7.8.zip -d /tmp/" do
  not_if { ::File.exists? "/tmp/refind-bin-0.7.8" }
end

# Run the install script.
execute "/tmp/refind-bin-0.7.8/install.sh && touch /var/db/receipts/com.rodsbooks.refind.plist" do
  not_if { ::File.exists? "/var/db/receipts/com.rodsbooks.refind.plist" }
end
