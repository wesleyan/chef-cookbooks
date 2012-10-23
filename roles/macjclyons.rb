name "macjclyons"
description "mac image"
run_list "recipe[prepare::mac]", "recipe[flash::mac]", "recipe[sudo]", "recipe[dmg]", "recipe[dock::mac]"
default_attributes("authorization" => {
  "sudo" => {
    "users" => ["administrator"],
    "passwordless" => true
  }
})