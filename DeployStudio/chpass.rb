#!/bin/ruby

newPASSWORD = "#Cl0s3th3l00p!1"

File.open("/tmp/chpass","w") do |f|
    f << %Q{
#!/usr/bin/env expect -f
set timeout -1
spawn sudo passwd labuser
expect {
    "New password:"
    {
        send "#{newPASSWORD}\r"
        exp_continue
    }
    "password:"
    {
        send "#{newPASSWORD}\r"
        exp_continue
    }
}
    }
end

system("/usr/bin/env expect -f /tmp/chpass")
File.delete("/tmp/chpass")

