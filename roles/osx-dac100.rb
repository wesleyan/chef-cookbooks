name "osx-dac100"
description "This role is specific to the computing lab in DAC100"
run_list "role[osx-cfa]"
default_attributes(
  "printers" => {
    "default" => "DAC100-E3880-1"
    })