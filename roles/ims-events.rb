name "ims-events"
description "Image for IMS Events Laptops"

run_list  "recipe[prepare::ims-events]",
          "recipe[sudo]", 
          # Package providers
          "recipe[dmg]", 
          # Xcode and homebrew
          "recipe[apple_xcode::mac]",
          "recipe[homebrew]",
          # Desktop and Dock
          # "recipe[preference::mac]",
          "recipe[dock::mac]", 
          "recipe[launch_association::mac]",
          #"recipe[desktop_picture::mac]",
          # Core system updates
          #"recipe[apple_osx_updates::mac]", 
          "recipe[oracle_java::mac]", 
          "recipe[apple_airport::mac]",
          # "recipe[printers::mac]", 
          # Browsers
          "recipe[google_chrome::mac]", 
          "recipe[mozilla_firefox::mac]",
          #"recipe[apple_safari::mac]", 
          # Runtimes         
          "recipe[microsoft_silverlight::mac]",
          "recipe[adobe_flash_player::mac]",
          "recipe[adobe_air::mac]",
          # Core applications
          "recipe[apple_ilife::mac]",
          "recipe[apple_itunes::mac]",
          "recipe[apple_iwork::mac]", 
          "recipe[microsoft_office::mac]",
          "recipe[unarchiver::mac]",
          "recipe[videolan_vlc::mac]",
          # Adobe CS6 Suite
          "recipe[adobe_acrobat_pro::mac]",
          # Video
          "recipe[cisco_jabber_video::mac]",
          "recipe[microsoft_skype::mac]",
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