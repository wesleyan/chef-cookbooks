name "ims-events"
description "Image for IMS Events Workstations"

run_list  "recipe[prepare::ims-events]",
          "recipe[sudo]", 
          # XCode
          "recipe[apple_xcode::mac]", 
          # Package providers
          "recipe[dmg]", 
          "recipe[homebrew]", 
          # Desktop and Dock
          # "recipe[preference::mac]",
          "recipe[dock::mac]", 
          # "recipe[desktop_picture::mac]",
          # Core system updates
          #"recipe[apple_osx_updates::mac]", 
          "recipe[oracle_java::mac]", 
          "recipe[printers::mac]", 
          # "recipe[rawcamera::mac]",
          # Browsers
          "recipe[google_chrome::mac]", 
          "recipe[mozilla_firefox::mac]",
          "recipe[apple_safari::mac]", 
          # Runtimes         
          "recipe[microsoft_silverlight::mac]",
          # Core applications
          "recipe[microsoft_office::mac]",
          "recipe[apple_itunes::mac]", 
          "recipe[unarchiver::mac]",
          "recipe[videolan_vlc::mac]",
          # Adobe CS6 Suite
          "recipe[adobe_photoshop_cs6::mac]", 
          "recipe[adobe_illustrator_cs6::mac]", 
          "recipe[adobe_indesign_cs6::mac]",
          "recipe[adobe_dreamweaver_cs6::mac]",
          "recipe[adobe_flash_player::mac]", 
          "recipe[adobe_flash_professional_cs6::mac]",
          "recipe[adobe_premiere_pro_cs6::mac]", 
          "recipe[adobe_after_effects_cs6::mac]", 
          "recipe[adobe_acrobat_pro::mac]",
          # Video
          "recipe[apple_compressor::mac]",
          "recipe[apple_final_cut_pro::mac]",
          "recipe[audacity::mac]",
          # Finalize 
          "recipe[finalize::mac]"
#"recipe[remotedesktop::mac]",

default_attributes(
"authorization" => {
  "sudo" => {
    "users" => ["administrator"],
    "passwordless" => true
  }
},
"homebrew" => {
   "user" => "administrator"
})

