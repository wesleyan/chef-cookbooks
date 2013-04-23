# Checks for a new chef version and updates

action :update do
  require 'mixlib/versioning'
  if not new_resource.version or Mixlib::Versioning.parse(`knife -v`.split[1]) < Mixlib::Versioning.parse(new_resource.version)
    system("/tmp/chef.sh")
  end
end