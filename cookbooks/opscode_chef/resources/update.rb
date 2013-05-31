actions :update

attribute :version, :kind_of => String, :default => nil

def initialize(name, run_context=nil)
  super
  @action = :update
end
