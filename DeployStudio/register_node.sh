#!/bin/sh
 
# deletes the client from chef (if it exists)
# using netcat
nc -w 1 -4 ims-chef.wesleyan.edu 62085
 
# deletes the local client.pem if it exists
rm -f /etc/chef/client.pem
 
# Registers machine with chef server and rolls through run list
chef-client
rm -f /etc/chef/validation.pem # after registration this is no longer needed
exit 0