action :add do
  new_resource.file_name
  cookbook_file "/tmp/#{new_resource.file_name}"
  execute "cp '/tmp/#{new_resource.file_name}' '/System/Library/User Template/English.lproj/#{new_resource.path}/'"
  get_users_list.each do |user|
    if user.uid >= 500
      execute "cp '/tmp/#{new_resource.file_name}' '#{user.user_dir}/#{new_resource.path}/' && chown #{user.username} '#{user.user_dir}/#{new_resource.path}/#{new_resource.file_name}'"
    end
  end
end

def get_users_list
  users = `dscacheutil -q user`.split("\n\n")
  users_list = Array.new
  for user in users do
    userObject = Dock::MacUser.new
    lines = user.split("\n") 
    for line in lines 
      if line.split(": ")[0] == "uid"
        userObject.uid = line.split(": ")[1].to_i
     end
     if(line.split(": ")[0] == "name")
       userObject.username = line.split(": ")[1]
     end
     if(line.split(": ")[0] == "dir")
       userObject.user_dir = line.split(": ")[1]
     end
    end
    users_list.push(userObject)
  end
  users_list
end