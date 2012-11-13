action :create do
    node['dock']['docks_array'].select {|dock| dock.name == new_resource.dock}.each do |dock| 
      generate_dock_plist(dock, "/tmp/com.apple.dock.#{dock.name}.plist")
    end
   
     preference "/tmp/com.apple.dock.#{new_resource.dock}.plist" do
       basename "com.apple.dock.plist"
       convert_to_binary true
       all_users true
       action :copy
     end

     
    node['dock']['docks_array'].select{|dock| dock.name == new_resource.dock}.each do |dock| 
      dock.others.each do |other| 
      directory other.path do
         owner "root"
         group "wheel"
         mode 0755
         recursive true
         action :create
       end
       
       if(other.icon) 
         execute "/tmp/seticon -i \"#{new_resource.icon}\" \"#{folder.path}\""  
         # Hide icon file from Finder so it doesn't show up in the Dock
         execute "setfile -a V \"#{folder.path}\"/Icon*" do
           returns [0, 1]
         end
       end
       
       other.contents.each do |application|
         puts application.path
         if ::File.directory? other.path
           puts ::File.directory ? other.path
           # link "#{other.path}/#{::File.basename(application.path)}" do
           #        to "#{application.path}"
           #      end
           # 
        end
      end
    end
      

      
     if(new_resource.restart) 
         sleep 10
         kill_cfprefsd
         kill_dock
       end
end