require 'pathname'

class MacUser 
  attr_accessor :uid
  attr_accessor :username
  attr_accessor :user_dir
  @uid = 0
  @username = ""
  @user_dir = ""
end

def make_group(group)
  directory "/var/generated_files/dock_items/#{group}" do
    owner "root"
    group "wheel"
    mode 0777
    recursive true
    action :create
  end
end

def add_to_group(path, group) 
  execute "ln -s \"#{path}\" \"/var/generated_files/dock_items/#{group}\"" do
    action :run
    returns [0, 1]
  end
end

def add_group_to_template_dock(group) 
  execute "add to template dock" do
     command "/tmp/additemtodock -f \"/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dock.plist\" \"/var/generated_files/dock_items/#{group}\""
     action :run
   end
end

def add_group_to_user_dock(user, group)
  execute "add to user dock" do
    command "sudo -u #{user.username} /tmp/additemtodock -f \"/Users/#{user.username}/Library/Preferences/com.apple.dock.plist\" \"/var/generated_files/dock_items/#{group}\""
    user user.username
    action :run
  end
end

def add_group_to_all_user_docks(group)
  for user in get_users_list do
    if(user.uid > 500) 
      add_group_to_user_dock user, group
    end
  end
end

def add_to_template_dock(path) 
  execute "add to template dock" do
    command "/tmp/additemtodock -f \"/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dock.plist\" \"#{new_resource.name}\""
    action :run
  end
end

def add_to_user_dock(user, path)
  execute "add to user dock" do
    command "/tmp/additemtodock -f \"/Users/#{user.username}/Library/Preferences/com.apple.dock.plist\" \"#{path}\""
    user user.username
    action :run
  end
end

def get_users_list
  users = `dscacheutil -q user`.split("\n\n")
  users_list = Array.new
  for user in users do
    userObject = MacUser.new
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

def add_to_all_user_docks(path) 
  for user in get_users_list do
    if(user.uid > 500) 
      add_to_user_dock user, path
    end
  end
end

action :add do
  if(new_resource.group)
    make_group new_resource.group
    add_to_group new_resource.name, new_resource.group
    add_group_to_template_dock new_resource.group
    add_group_to_all_user_docks new_resource.group
    
  else
    if(new_resource.all_users)
      add_to_all_user_docks new_resource.name
    else
      user = MacUser.new 
      user.username = new_resource.user
      add_to_user_dock user, new_resource.name
    end
  end
end