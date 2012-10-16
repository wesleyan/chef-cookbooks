name "mac"
description "mac image"
run_list "recipe[prepare::mac]", "recipe[sudo]", "recipe[dmg]"
#"recipe[chrome::mac]", "recipe[remotedesktop::mac]", "recipe[photoshop::mac]", "recipe[office::mac]"

default_attributes(
"authorization" => {
  "sudo" => {
    "users" => ["administrator"],
    "passwordless" => true
  }
}
)
