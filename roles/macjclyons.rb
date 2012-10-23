name "macjclyons"
description "mac image"
run_list "recipe[prepare::mac]", "recipe[homebrew]", "recipe[sudo]", "recipe[dmg]", "recipe[dock::mac]"
default_attributes("authorization" => {
  "sudo" => {
    "users" => ["administrator"],
    "passwordless" => true
  }
})