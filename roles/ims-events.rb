name "ims-events"
description "Image for IMS Events Workstations"

run_list "recipe[prepare::ims-events]", "recipe[sudo]", "recipe[dmg]", 
          # Core system updates
          "recipe[osxupdate::mac]", "recipe[java::mac]",
          # Browsers and runtimes
          "recipe[chrome::mac]", "recipe[firefox::mac]", "recipe[silverlight::mac]",
          # Core applications
          "recipe[office::mac]", "recipe[itunes::mac]", "recipe[unarchiver::mac]", "recipe[vlc::mac]",
          # Video editing and mastering
          "recipe[finalcutpro::mac]", "recipe[compressor::mac]", "recipe[toast::mac]",
          # Adobe CS6 Suite
          "recipe[photoshop::mac]", "recipe[illustrator::mac]", "recipe[indesign::mac]", "recipe[dreamweaver::mac]", "recipe[flashpro::mac]", "recipe[premierepro::mac]", "recipe[aftereffects::mac]", "recipe[acrobat::mac]",
          # Development
          "recipe[xcode::mac]"

#"recipe[remotedesktop::mac]",

default_attributes(
"authorization" => {
  "sudo" => {
    "users" => ["administrator"],
    "passwordless" => true
  }
})
