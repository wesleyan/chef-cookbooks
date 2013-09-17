action :add do
  new_resource.file_name
  cookbook_file "/tmp/#{new_resource.file_name}"
  execute "mkdir -p '/System/Library/User Template/English.lproj/#{new_resource.path}' && cp '/tmp/#{new_resource.file_name}' '/System/Library/User Template/English.lproj/#{new_resource.path}/'"
  get_users_list.each do |user|
    if user.uid >= 500
      execute "mkdir -p '/System/Library/User Template/English.lproj/#{new_resource.path}' && cp '/tmp/#{new_resource.file_name}' '#{user.user_dir}/#{new_resource.path}/' && chown #{user.username} '#{user.user_dir}/#{new_resource.path}/#{new_resource.file_name}'" do
        returns [0,1]
      end
    end
  end
end

def get_users_list
  users = `ls -1 /Users | grep -v Shared`.split("\n")
  users_list = Array.new
  for user in users do
    userObject = UserModule::MacUser.new
    userObject.uid = `id -u -r #{user}`.to_i
    userObject.username = user
    userObject.user_dir = "/Users/#{user}"
    users_list.push(userObject)
  end
  users_list
end
