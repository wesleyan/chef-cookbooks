name "ims-events"
description "Image for IMS Events Workstations"

run_list  "recipe[prepare::ims-events]",
          "recipe[sudo]", 
          # XCode
          "recipe[xcode::mac]", 
          # Package providers
          "recipe[dmg]", 
          "recipe[homebrew]", 
          # Desktop and Dock
          # "recipe[preference::mac]",
          "recipe[dock::mac]", 
          # "recipe[desktop_picture::mac]",
          # Core system updates
          "recipe[osxupdate::mac]", 
          "recipe[java::mac]", 
          "recipe[printers::mac]", 
          # "recipe[rawcamera::mac]",
          # Browsers
          "recipe[chrome::mac]", 
          "recipe[firefox::mac]",
          "recipe[safari::mac]", 
          # Runtimes
          # "recipe[flash::mac]", 
          "recipe[silverlight::mac]",
          # Core applications
          "recipe[office::mac]",
          "recipe[itunes::mac]", 
          "recipe[unarchiver::mac]",
          "recipe[vlc::mac]",
          # Adobe CS6 Suite
          "recipe[photoshop::mac]", 
          "recipe[illustrator::mac]", 
          "recipe[indesign::mac]",
          "recipe[dreamweaver::mac]", 
          "recipe[flashpro::mac]",
          "recipe[premierepro::mac]", 
          "recipe[aftereffects::mac]", 
          "recipe[acrobat::mac]",
          # Video
          "recipe[compressor::mac]",
          "recipe[finalcutpro::mac]",
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

