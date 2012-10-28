actions :add, :clear
default_action :add

attribute :name, :kind_of => String, :name_attribute => true
attribute :group, :kind_of => String, :default => nil
attribute :user, :kind_of => String, :default => nil

# attribute :destination, :kind_of => String, :default => "/Applications"
attribute :all_users, :kind_of => [TrueClass, FalseClass], :default => false


def initialize(name, run_context=nil)
  super
  @action = :add
end
