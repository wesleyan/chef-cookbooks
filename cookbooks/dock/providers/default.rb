action :create do
  node["dock"]["docks_array"].push(::DockModule::Dock.new(new_resource.name))
end