action :generate_plist do
  path = new_resource.path ? new_resource.path : new_resource.name
 
  template path do
    source "com.apple.LaunchServices.plist.erb"
    mode 0666
    owner current_user.username
    group "wheel"
    variables({
      :associations => node['launch_association']['associations']
    })
  end
end