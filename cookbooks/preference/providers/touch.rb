action :touch do
  relative_path = new_resource.relative_path ? new_resource.relative_path : new_resource.name
  if(new_resource.all_users)
      touch_for_all_users(relative_path)
  else
      touch_for_user(current_user, source_path)
  end
end