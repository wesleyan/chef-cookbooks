name "mac"
description "mac image"
run_list "recipe[prepare::mac]", "recipe[dmg]"
#"recipe[chrome::mac]", "recipe[remotedesktop::mac]", "recipe[photoshop::mac]", "recipe[office::mac]"
