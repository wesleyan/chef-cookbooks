#
# Cookbook Name:: system_preferences 
# Provider:: password
#

action :change do
  File.open("/tmp/chpass","w") do |f|
    f << %Q{
      #!/usr/bin/env expect -f
      set timeout -1
      spawn sudo passwd #{new_resource.username}
      expect {
        "New password:"
        {
          send "#{new_resource.password}\r"
          exp_continue
        }
        "password:"
        {
          send "#{new_resource.password}\r"
          exp_continue
        }
      }
    }
  end
  system("/usr/bin/env expect -f /tmp/chpass")
  File.delete("/tmp/chpass")
end
