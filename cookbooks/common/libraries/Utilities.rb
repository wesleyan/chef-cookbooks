def get_users_list
  users = `dscacheutil -q user`.split("\n\n")
  users_list = Array.new
  for user in users do
    userObject = UserModule::MacUser.new
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

def current_user
  userObject = UserModule::MacUser.new
  userObject.username = ENV['USER']
  userObject.uid = ::Process.uid
  userObject.user_dir = ::File.expand_path('~')
  userObject
end

def kill_cfprefsd 
  execute "killall cfprefsd" do
    returns [0, 1]
  end
end

def kill_dock
  execute "killall Dock" do
    returns [0,1]
  end
end


 