name "ims-webcast"
description "Loadout for IMS Webcast machines"

          # Base OS X role
run_list  "role[osx-base]",
          # Selections from the Adobe CS6 Suite
          "recipe[adobe_photoshop_cs6::mac]", 
          "recipe[adobe_illustrator_cs6::mac]", 
          "recipe[adobe_premiere_pro_cs6::mac]", 
          "recipe[adobe_after_effects_cs6::mac]", 
          "recipe[adobe_acrobat_pro::mac]",
          # Post-production software
          "recipe[apple_compressor::mac]",
          "recipe[apple_final_cut_pro::mac]",
          # Webcasting software
          "recipe[blackmagic_atem::mac]",
          "recipe[blackmagic_desktop_video::mac]",
          "recipe[telestream_wirecast::mac]"

default_attributes(
"prepare" => {
  # Turn off bind-to-domain 
  "bind" => false, 
  # Turn off delete inactive users
  "inactivity" => 0
  })