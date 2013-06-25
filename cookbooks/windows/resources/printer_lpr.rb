#
# Author:: Max Dietz (<mdietz@wesleyan.edu>)
# Cookbook Name:: windows
# Resource:: printer_lpr
#
# Copyright:: 2013, Wesleyan University
#

actions :add
default_action :add

attribute :lpr_server, :kind_of => String, :required => true
attribute :printer_name, :kind_of => String, :name_attribute => true, :required => true
attribute :driver, :kind_of => String, :required => true