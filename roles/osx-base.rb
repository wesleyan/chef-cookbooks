name "osx-base"
description "Base role for OS X deployment"

          # Core recipes
run_list  "recipe[prepare::mac]",
          "recipe[sudo]",
          "recipe[opscode_chef::mac]",
          # Package providers
          "recipe[dmg]",
          # XCode
          "recipe[apple_xcode::mac]",
          "recipe[homebrew]",
          # Desktop and Dock
          #"recipe[preference::mac]",
          "recipe[dock::mac]", 
          "recipe[launch_association::mac]",
          # Core system updates and applications
          "recipe[apple_osx_updates::mac]", 
          "recipe[apple_airport::mac]",
          "recipe[oracle_java::mac]", 
          "recipe[sassafras_k2::mac]",
          "recipe[eset_nod32::mac]",
          "recipe[verdiem_surveyor::mac]",
          # Browsers
          "recipe[google_chrome::mac]", 
          "recipe[mozilla_firefox::mac]",
          # Comment out Safari because 10.8.4 update includes latest build 6.0.5
          #"recipe[apple_safari::mac]",
          # Runtimes
          "recipe[adobe_flash_player::mac]",
          "recipe[adobe_air::mac]", 
          "recipe[microsoft_silverlight::mac]",
          # Core applications
          "recipe[microsoft_office::mac]",
          "recipe[apple_itunes::mac]", 
          "recipe[apple_ilife::mac]",
          "recipe[apple_iwork::mac]",
          "recipe[unarchiver::mac]",
          "recipe[videolan_vlc::mac]",
          "recipe[profile_manager::mac]",
          # Finalize 
          "recipe[finalize::mac]"

default_attributes(
"authorization" => {
  "sudo" => {
    "users" => ["administrator"],
    "passwordless" => true
  },
},
"homebrew" => {
   "user" => "administrator"
})
