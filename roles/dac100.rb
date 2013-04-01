name "dac100"
description "mac image"
run_list "recipe[prepare::mac]","recipe[sudo]","recipe[dmg]", "recipe[printers::mac]"
default_attributes(
"authorization" => {
  "sudo" => {
    "users" => ["administrator"],
    "passwordless" => true
  }
},
  "printers" => {
    "default" => "DAC100-E3880-1"
    })
