action :set_file_handler do
  uti = new_resource.uti ? new_resource.uti : new_resource.name
  if(new_resource.all_users)
   for cur_user in get_users_list
    if cur_user.uid >= 498 && ::File.directory?(cur_user.user_dir)
      final_user = cur_user
      execute "duti -s #{new_resource.bundle_id} #{uti} #{new_resource.role}" do
        command "duti -s #{new_resource.bundle_id} #{uti} #{new_resource.role}"
        user cur_user.username
        returns [0,1,2]
       end
     end
   end
   copy_plist_for_user_template("#{final_user.user_dir}/Library/Preferences/com.apple.LaunchServices.plist")
  else
   if(current_user.uid >= 498 && ::File.directory?(current_user.user_dir))
     execute "duti -s #{new_resource.bundle_id} #{uti} #{new_resource.role}" do
       command "duti -s #{new_resource.bundle_id} #{uti} #{new_resource.role}"
       user current_user.username
       returns [0,1,2]
      end
    end 
  end
end

