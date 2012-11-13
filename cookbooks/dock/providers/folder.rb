action :add do
    folder  = ::DockModule::DockFolder.new
     user = UserModule::MacUser.new
     folder.path = "/var/generated_files/dock/groups/#{new_resource.name}"
     folder.name = new_resource.name
    folder.display_as = new_resource.display_as
    folder.show_as = new_resource.show_as
    folder.arrangement = new_resource.arrangement
     node['dock']['docks_array'].select { |dock| dock.name == new_resource.dock }.each{ |dock| dock.add_other(folder) }
end


