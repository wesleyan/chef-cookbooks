
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

  def convert_dock_plist_to_binary(plist_path) 
     execute "convert to binary" do
        command "plutil -convert binary1 -o '/tmp/com.apple.dock.plist' #{plist_path}"
        action :run
      end    
  end

  def copy_dock_plist_for_user(user) 
    # only copy if they have a home directory
   if File.directory? "/Users/#{user.username}"
       file "/Users/#{user.username}/Library/Preferences/com.apple.dock.plist" do
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
      execute "chmod 600 /tmp/com.apple.dock.plist"
      execute "cp /tmp/com.apple.dock.plist /Users/#{user.username}/Library/Preferences/com.apple.dock.plist" 
      execute "chown #{user.username}:staff /Users/#{user.username}/Library/Preferences/com.apple.dock.plist"
    end
  end

  def copy_dock_plist_for_user_template
      file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dock.plist" do
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
      execute "chmod 600 /tmp/com.apple.dock.plist"
      execute "cp /tmp/com.apple.dock.plist \"/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dock.plist\"" 
      execute "chown root:wheel \"/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dock.plist\""
  end

  def copy_dock_plist_for_all_users
    for user in get_users_list do
      if(user.uid >= 500)
        puts user.username
        copy_dock_plist_for_user user
      end
    end
    copy_dock_plist_for_user_template
  end

  def generate_dock_plist(dock_apps, dock_others)
    template "/tmp/com.apple.dock.temp.plist" do
      source "com.apple.dock.plist.erb"
      mode 0666
      owner "root"
      group "wheel"
      variables({
        :apps => dock_apps,
        :others => dock_others
      })
    end
  end
