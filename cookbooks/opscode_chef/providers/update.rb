# Checks for a new chef version and updates
action :update do
  require 'mixlib/versioning'
  if new_resource.version == nil or Mixlib::Versioning.parse(Chef::VERSION) < Mixlib::Versioning.parse(new_resource.version)
    system("/tmp/chef.sh")
  end
end