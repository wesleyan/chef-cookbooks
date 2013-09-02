action :set_url_handler do
  if (new_resource.all_users)
    for cur_user in get_users_list
      if cur_user.uid >= 500 && ::File.directory?(cur_user.user_dir)
        final_user = cur_user
        execute "/tmp/duti -s #{new_resource.bundle_id} #{new_resource.uti}" do
          user cur_user.username
          returns [0,1,2]
        end
      end
    end
    copy_plist_for_user_template("#{final_user.user_dir}/Library/Preferences/com.apple.LaunchServices.plist")
  elsif current_user.uid >= 500 and ::File.directory?(current_user.user_dir)
    execute "/tmp/duti -s #{new_resource.bundle_id} #{new_resource.uti}" do
      user current_user.username
      returns [0,1,2]
    end
  end
end
