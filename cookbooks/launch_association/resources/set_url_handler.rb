#
# Cookbook Name:: launch_associations
# Resource:: set_url_handler
#
# Copyright 2013, Max Dietz
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
actions :set_url_handler
default_action :set_url_handler

attribute :uti, :kind_of => String, :name_attribute => true
attribute :bundle_id, :kind_of => String, :default => nil
attribute :all_users, :kind_of => [TrueClass, FalseClass], :default => true

def initialize(name, run_context=nil)
  super
  @action = :set_url_handler
end
