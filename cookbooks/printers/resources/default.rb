#
# Cookbook Name:: printers
# Resource:: printer
#

actions :add, :remove, :set_default, :add_no_falcon

attribute :name, :kind_of => String, :name_attribute => true
attribute :model, :kind_of => String, :default => nil

def initialize(name, run_context=nil)
  super
  @action = :add
end