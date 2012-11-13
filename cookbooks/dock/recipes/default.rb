# Mountain Lion inexplicably includes some sort of 'dockfixup' plist in /Library/Preferences that adds Notes to the User Template dock. Not very useful. Not sure why Apple does it.
file "/Library/Preferences/com.apple.dockfixup.plist" do
  action :delete
end



# Download seticon, a useful command-line tool for setting icons for folders and applications
cookbook_file "/tmp/seticon.zip"

# Unzip seticon to the tmp directory
execute "unzip -o /tmp/seticon.zip -d /tmp/"

file "/tmp/seticon" do
  mode "0755"
  action :touch
end
