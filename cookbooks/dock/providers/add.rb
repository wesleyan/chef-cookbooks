dock_others = Array.new
dock_apps = Array.new

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
  
  file "/Users/#{user.username}/Library/Preferences/com.apple.dock.plist" do
    owner #{user.username}
    group "staff"
    mode 0600
    action :delete
  end
  execute "chown #{user.username}:staff /tmp/com.apple.dock.plist"
  execute "chmod 600 /tmp/com.apple.dock.plist"
  execute "cp /tmp/com.apple.dock.plist /Users/#{user.username}/Library/Preferences/com.apple.dock.plist" 
  execute "chown #{user.username}:staff /Users/#{user.username}/Library/Preferences/com.apple.dock.plist"
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

action :add do
  app = Dock::DockApp.new
  user = Dock::MacUser.new
  user.username = "jclyons"
  app.path = new_resource.name
  dock_apps.push(app)
  generate_dock_plist(dock_apps, dock_others)
  convert_dock_plist_to_binary("/tmp/com.apple.dock.temp.plist")
  copy_dock_plist_for_user(user)
  kill_cfprefsd
  kill_dock
end