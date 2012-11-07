#
# Cookbook Name:: launch_associations
# Resource:: set_file_handler
#
# Copyright 2012, Jonathan Lyons
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
actions :generate_plist
default_action :generate_plist

attribute :name, :kind_of => String, :name_attribute => true
attribute :path, :kind_of => String, :default => nil

def initialize(name, run_context=nil)
  super
  @action = :generate_plist
end
