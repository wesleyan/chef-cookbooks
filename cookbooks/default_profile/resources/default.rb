#
# Cookbook Name:: printers
# Resource:: printer
#

actions :add

attribute :file_name, :kind_of => String, :name_attribute => true
attribute :path, :kind_of => String, :default => nil
attribute :cookbook, :kind_of => String, :default => nil

def initialize(name, run_context=nil)
  super
  @action = :add
end