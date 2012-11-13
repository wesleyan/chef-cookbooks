#
# Cookbook Name:: preference
# Resource:: default
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
actions :copy, :touch
default_action :copy

attribute :name, :kind_of => String, :name_attribute => true
attribute :source, :kind_of => String, :default => nil
# attribute :destination, :kind_of => String, :default => "\Library/Preferences"
attribute :all_users, :kind_of => [TrueClass, FalseClass], :default => false
attribute :convert_to_binary, :kind_of => [TrueClass, FalseClass], :default => true
attribute :basename, :kind_of => String, :default => nil
attribute :relative_path, :kind_of => String, :default => nil
attribute :all_users, :kind_of => [TrueClass, FalseClass], :default => false

def initialize(name, run_context=nil)
  super
  @action = :copy
end
