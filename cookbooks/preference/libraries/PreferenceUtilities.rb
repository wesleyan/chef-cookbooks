def get_users_list
  users = `dscacheutil -q user`.split("\n\n")
  users_list = Array.new
  for user in users do
    userObject = Preference::MacUser.new
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
  ENV['USER']
end

def convert_plist_to_binary(plist_path) 
    execute "convert to binary" do
       command "plutil -convert binary1 -o #{plist_path} #{plist_path}"
       action :run
    end    
end

def copy_plist_for_user_template(plist_path)
    basename = ::File.basename(plist_path)
    file "/System/Library/User Template/English.lproj/Library/Preferences/#{basename}" do
      owner "root"
      group "wheel"
      mode 0600
      action :delete
    end
    
    directory "/System/Library/User Template/English.lproj/Library/Preferences" do
      owner "root"
      group "wheel"
      mode 0700
      recursive true
    end
    
  #  execute "chown #{user.username}:staff /tmp/com.apple.dock.plist"
    execute "chmod 600 /tmp/#{basename}"
    execute "cp /tmp/com.apple.dock.plist \"/System/Library/User Template/English.lproj/Library/Preferences/#{basename}\"" 
    execute "chown root:wheel \"/System/Library/User Template/English.lproj/Library/Preferences/#{basename}\""
end

def touch_for_all_users(relative_path)
   for user in get_users_list do
     if(user.uid >= 500)
        touch_for_user user, relative_path
     end
  end
end

def touch_for_user(user, relative_path)
  if ::File.directory?"/Users/#{user.username}"
    dirname = ::File.dirname("/Users/#{user.username}/#{relative_path}")
    execute "mkdir -p #{dirname}"
    execute "touch /Users/#{user.username}/#{relative_path}"
    execute "chown #{user.username}:staff /Users/#{user.username}/#{relative_path}"
    execute "chmod 644 /Users/#{user.username}/#{relative_path}"
  end
end

def copy_plist_for_user(user, plist_path) 
      basename = ::File.basename(plist_path)
  # only copy if they have a home directory
     if File.directory? "/Users/#{user.username}"
         file "/Users/#{user.username}/Library/Preferences/#{basename}" do
           owner #{user.username}
           group "staff"
           mode 0600
           action :delete
         end
 
        directory "/Users/#{user.username}/Library/Preferences" do
          owner #{user.username}
          group "staff"
          mode 0700
          recursive true
        end

      #  execute "chown #{user.username}:staff /tmp/com.apple.dock.plist"
        execute "chmod 600 #{plist_path}"
        execute "cp #{plist_path} /Users/#{user.username}/Library/Preferences/#{basename}" 
        execute "chown #{user.username}:staff /Users/#{user.username}/Library/Preferences/#{basename}"
    end
end

def copy_plist_for_all_users(plist_path)
   for user in get_users_list do
     if(user.uid >= 500)
       puts user.username
       copy_plist_for_user user, plist_path
     end
   end
   copy_plist_for_user_template plist_path
 end