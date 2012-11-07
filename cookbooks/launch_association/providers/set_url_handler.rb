action :set_url_handler do
  uti = new_resource.uti ? new_resource.uti : new_resource.name
  association = new URLAssociation
  association.uti = uti
  association.role = "LSHandlerRole#{new_resource.role.capitalize}"
  association.bundle_id = new_resource.bundle_id
  node['launch_association']['associations'].push(association)
end