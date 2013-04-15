name "osx-dac100"
description "mac image"
run_list "role[osx_base]"
default_attributes(
  "printers" => {
    "default" => "DAC100-E3880-1"
    })
