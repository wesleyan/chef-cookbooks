name "mac"
description "mac image"
run_list "recipe[dmg]", "recipe[osxupdate::mac]", "recipe[java::mac]", "recipe[itunes::mac]", "recipe[unarchiver::mac]", "recipe[vlc::mac]"
#"recipe[chrome::mac]", "recipe[remotedesktop::mac]", "recipe[photoshop::mac]", "recipe[office::mac]"
