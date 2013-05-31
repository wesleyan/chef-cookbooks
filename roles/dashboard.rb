name "dashboard"
description "Base role for dashboard deployment"

run_list  "recipe[apt]",
          "recipe[sudo]",
          "recipe[build-essential]",
          "recipe[xorg::dashboard]"

default_attributes(
"authorization" => {
  "sudo" => {
    "users" => ["pi"],
    "passwordless" => true
  }
})
