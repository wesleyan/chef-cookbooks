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
actions :set_file_handler
default_action :set_file_handler

attribute :name, :kind_of => String, :name_attribute => true
attribute :bundle_id, :kind_of => String, :default => nil
attribute :all_users, :kind_of => [TrueClass, FalseClass], :default => false
attribute :role, :kind_of => String, :default => "all"
attribute :uti, :kind_of => String, :default => nil

def initialize(name, run_context=nil)
  super
  @action = :set_file_handler
end
