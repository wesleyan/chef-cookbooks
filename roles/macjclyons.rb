name "macjclyons"
description "mac image"
run_list "recipe[homebrew]", "recipe[desktop_picture::mac]"
default_attributes("authorization" => {
  "sudo" => {
    "users" => ["administrator"],
    "passwordless" => true
  },
  "homebrew" => {
    "user" => "administrator"
  }
})