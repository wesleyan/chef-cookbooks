name "mac"
description "mac image"
run_list "recipe[dmg]", "recipe[prepare::mac]", "recipe[osxupdate::mac]"
#run_list "recipe[dmg]", "recipe[chrome::mac]", "recipe[remotedesktop::mac]", "recipe[photoshop::mac]", "recipe[office::mac]"
