#
# Cookbook Name:: gnu_r
# Resource:: packages
#

# Enumerate our available provider actions
actions :osx_install, :osx_update, :win_install, :win_update

# Define our package name attribute
attribute :name, :kind_of => String, :name_attribute => true

# This attribute defines what mirror to get packages from, the default being the rstudio mirror.
attribute :mirror, :kind_of => String, :default => "http://cran.rstudio.com"

def initialize(name, run_context=nil)
  super
  @action = :osx_install
end
