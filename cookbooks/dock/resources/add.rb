#
# Cookbook Name:: desktop_picture
# Resource:: package
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
actions :add, :folder_create
default_action :add

attribute :name, :kind_of => String, :name_attribute => true
attribute :group, :kind_of => String, :default => nil
attribute :user, :kind_of => String, :default => nil
attribute :display_as, :kind_of => String, :default => nil
attribute :show_as, :kind_of => String, :default => nil
attribute :arrangement, :kind_of => String, :default => nil
# attribute :destination, :kind_of => String, :default => "/Applications"
attribute :all_users, :kind_of => [TrueClass, FalseClass], :default => false
attribute :restart, :kind_of => [TrueClass, FalseClass], :default => false
attribute :cookbook, :kind_of => String, :default => "dock"
attribute :icon, :kind_of => String, :default => nil
def initialize(name, run_context=nil)
  super
  @action = :add
end
