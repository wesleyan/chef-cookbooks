# action :set_file_handler do
#   uti = new_resource.uti ? new_resource.uti : new_resource.name
#   association = LaunchAssociations::FileAssociation.new
#   association.uti = uti
#   association.role = "LSHandlerRole#{new_resource.role.capitalize}"
#   association.bundle_id = new_resource.bundle_id
#   node['launch_association']['associations'].push(association)
# end

action :set_file_handler do
  uti = new_resource.uti ? new_resource.uti : new_resource.name
  if(new_resource.all_users)
   for cur_user in get_users_list
    if cur_user.uid >= 500 && ::File.directory?(cur_user.user_dir)
      execute "/tmp/duti -s #{new_resource.bundle_id} #{uti} #{new_resource.role}" do
        command "/tmp/duti -s #{new_resource.bundle_id} #{uti} #{new_resource.role}"
        user cur_user.username
       end
     end
   end
  else
   if(current_user.uid >= 500 && ::File.directory?(current_user.user_dir))
     execute "/tmp/duti -s #{new_resource.bundle_id} #{uti} #{new_resource.role}" do
       command "/tmp/duti -s #{new_resource.bundle_id} #{uti} #{new_resource.role}"
       user current_user.username
      end
    end 
  end
end

