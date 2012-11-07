action :copy do
  source_path = new_resource.source ? new_resource.source : new_resource.name
  # ruby_block "copy plist" do
  #   block do
      if(new_resource.convert_to_binary)
          convert_plist_to_binary(source_path)
      end    
      
      if(new_resource.all_users)
          copy_plist_for_all_users(source_path)
      else
          copy_plist_for_user(current_user, source_path)
      end
  #   end
  # end
    
end