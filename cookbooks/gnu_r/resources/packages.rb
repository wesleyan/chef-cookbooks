#
# Cookbook Name:: printers
# Resource:: printer
#

actions :install, :update, :win_install, :win_update

attribute :name, :kind_of => String, :name_attribute => true
attribute :mirror, :kind_of => String, :default => "http://cran.rstudio.com"

def initialize(name, run_context=nil)
  super
  @action = :install
end
