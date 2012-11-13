action :add do
      application = ::DockModule::DockApplication.new
      user = UserModule::MacUser.new
      application.path = new_resource.path ? new_resource.path : new_resource.name
      if new_resource.group
        node['dock']['docks_array'].select{|dock| dock.name == new_resource.dock}.each{|dock| dock.add_to_group(new_resource.group, application)}
      else
        node['dock']['docks_array'].select{|dock| dock.name == new_resource.dock}.each{|dock| dock.add_application(application)}
      end
end
