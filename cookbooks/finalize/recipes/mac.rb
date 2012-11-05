# we need to make sure dockfixup plist is gone otherwise icons can get randomly added to the dock
execute "rm -rf /Library/Preferences/com.apple.dockfixup.plist" 

# on the next pass through we do not want to regenerate the dock
#execute "touch /tmp/dockregen.tmp" 
