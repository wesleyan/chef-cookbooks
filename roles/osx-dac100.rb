name "osx-dac100"
description "This role is specific to the computing lab in DAC100"

# Our run list for DAC 100.
run_list "role[osx-cfa]", 
		 "recipe[printers::dac100]", 
		 "recipe[benvista_photozoom_pro::mac]",
		 "recipe[xrite_colormunki_photo::mac]"

# Set default printer
default_attributes(
  "printers" => {
    "default" => "DAC100-E3880-1"
    })
