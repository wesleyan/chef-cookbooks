
dock_others = Array.new
dock_apps = Array.new


action :add do

  app = Dock::DockApp.new
  user = Dock::MacUser.new
  app.path = new_resource.name
  generate_dock_plist(dock_apps, dock_others)
  convert_dock_plist_to_binary("/tmp/com.apple.dock.temp.plist")
  if new_resource.group
    if IO::File.directory? "/var/generated_files/dock/groups/#{new_resource.group}"
      link "/var/generated_files/dock/groups/#{new_resource.group}/#{IO::File.basename(app.path)}" do
        to new_resource.name
      end
    end 
  else
      dock_apps.push(app) 
  end
  if(new_resource.icon) 
    execute "/tmp/seticon -i \"#{new_resource.icon}\" \"#{app.path}\""
  end
    
  if(new_resource.all_users) 
    copy_dock_plist_for_all_users
  elsif(!new_resource.all_users && new_resource.user)
      user.username = new_resource.user
      copy_dock_plist_for_user(user)
  end
  
  if(new_resource.restart) 
    sleep 7
    kill_cfprefsd
    kill_dock
  end
end

action :folder_create do
    folder  = Dock::DockFolder.new
    user = Dock::MacUser.new
    folder.path = "/var/generated_files/dock/groups/#{new_resource.name}"
    folder.name = new_resource.name
    folder.display_as = new_resource.display_as
    folder.show_as = new_resource.show_as
    folder.arrangement = new_resource.arrangement
    if dock_others.select {|other| other.name == new_resource.name }.length == 0
      dock_others.push(folder)
    end
    
    directory folder.path do
      owner "root"
      group "wheel"
      mode 0755
      recursive true
      action :create
    end
    
    if(new_resource.icon) 
      execute "/tmp/seticon -i \"#{new_resource.icon}\" \"#{folder.path}\""  
      
      execute "setfile -a V \"#{folder.path}\"/Icon*" do
        returns [0, 1]
      end
      
    end
   
    
    generate_dock_plist(dock_apps, dock_others)
    convert_dock_plist_to_binary("/tmp/com.apple.dock.temp.plist")
    if(new_resource.all_users) 
      copy_dock_plist_for_all_users
    elsif(!new_resource.all_users && new_resource.user)
        user.username = new_resource.user
        copy_dock_plist_for_user(user)
    end
    

    
    if(new_resource.restart)
      sleep 7
      kill_cfprefsd
      kill_dock
    end
end
