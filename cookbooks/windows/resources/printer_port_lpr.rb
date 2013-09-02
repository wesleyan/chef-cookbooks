#
# Author:: Max Dietz (<mdietz@wesleyan.edu>)
# Cookbook Name:: windows
# Resource:: printer_port_lpr
#
# Copyright:: 2013, Wesleyan University
#

actions :create
default_action :create

attribute :lpr_server, :kind_of => String, :required => true
attribute :printer_name, :kind_of => String, :name_attribute => true, :required => true
