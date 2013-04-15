#
# Cookbook Name:: eset_nod32
# Resource:: eset_nod32
#

actions :configure

attribute :av_update_server, :kind_of => String, :default => nil
attribute :av_update_failsafe_username, :kind_of => String, :default => nil
attribute :av_update_failsafe_password, :kind_of => String, :default => nil
attribute :av_update_server_list, :kind_of => String, :default => nil
attribute :racl_server_addr, :kind_of => String, :default => nil
attribute :racl_server_port, :kind_of => Integer, :default => 2222
attribute :racl_interval, :kind_of => Integer, :default => 10
attribute :privileged_users, :kind_of => String, :default => "root"
attribute :samples_enabled, :kind_of => [ TrueClass, FalseClass ], :default => true
attribute :samples_send_files, :kind_of => String, :default => "update"
attribute :samples_send_stats, :kind_of => String, :default => "update"
attribute :samples_send_target, :kind_of => String, :default => "ras:eset"
attribute :av_scan_app_unwanted, :kind_of => [ TrueClass, FalseClass ], :default => true

def initialize(name, run_context=nil)
  super
  @action = :configure
end

