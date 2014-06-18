#!/bin/sh
# Copyright (C) 2014 Wesleyan University
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#   http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
 
# deletes the client from chef (if it exists)
# using netcat
nc -w 1 -4 ims-chef.wesleyan.edu 62085
 
# deletes the local client.pem if it exists
rm -f /etc/chef/client.pem
 
# Registers machine with chef server and rolls through run list
chef-client
rm -f /etc/chef/validation.pem # after registration this is no longer needed
exit 0