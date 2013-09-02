#
# Cookbook Name:: system_preferences
# Resource:: password
#

actions :change

attribute :username, :kind_of => String, :name_attribute => true
attribute :password, :kind_of => String, :required  => true

def initialize(name, run_context=nil)
  super
  @action = :change
end
