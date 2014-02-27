#
# Cookbook Name:: nodejs
# Resource:: nodejs
#

actions :add 

attribute :name, :kind_of => String, :name_attribute => true

def initialize(name, run_context=nil)
  super
  @action = :add
end
