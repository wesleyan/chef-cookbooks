action :copy do
  source_path = new_resource.source ? new_resource.source : new_resource.name
  basename = new_resource.basename ? new_resource.basename : ::File.basename(source_path)
      if(new_resource.convert_to_binary)
          convert_plist_to_binary(source_path)
      end    
      
      if(new_resource.all_users)
          copy_plist_for_all_users(source_path, new_resource.basename)
      else
          copy_plist_for_user(current_user, source_path, new_resource.basename)
      end
end

action :touch do
  relative_path = new_resource.relative_path ? new_resource.relative_path : new_resource.name
  if(new_resource.all_users)
      touch_for_all_users(relative_path)
  else
      touch_for_user(current_user, source_path)
  end
end