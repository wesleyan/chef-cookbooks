name "mac"
description "mac image"

run_list "recipe[prepare::mac]", "recipe[sudo]", 
          # XCode
          "recipe[xcode::mac]", 
          # Package providers
          "recipe[dmg]", "recipe[homebrew]", 
          # Desktop and Dock
          "recipe[dock::mac]", "recipe[desktop_picture::mac]",
          # Core system updates
          "recipe[osxupdate::mac]", "recipe[java::mac]", "recipe[printers::mac]", "recipe[rawcamera::mac]",
          # Browsers and runtimes
          "recipe[chrome::mac]", "recipe[firefox::mac]", "recipe[flash::mac]", "recipe[silverlight::mac]",
          # Core applications
          "recipe[office::mac]", "recipe[itunes::mac]", "recipe[unarchiver::mac]", "recipe[vlc::mac]",
          # Stats applications
          "recipe[r::mac]", "recipe[rstudio::mac]", 
          # 3D modeling/rendering applications
          "recipe[rhinoceros::mac]", "recipe[sketchup::mac]",
          # Audio applications
          "recipe[soundhack::mac]", "recipe[supercollider::mac]",
          # Adobe CS6 Suite
          "recipe[photoshop::mac]", "recipe[illustrator::mac]", "recipe[indesign::mac]", "recipe[dreamweaver::mac]", 
          "recipe[flashpro::mac]", "recipe[premierepro::mac]", "recipe[aftereffects::mac]", "recipe[acrobat::mac]",
          # Development
          "recipe[eclipse::mac]", "recipe[aquamacs::mac]", "recipe[macvim::mac]"

#"recipe[remotedesktop::mac]"--,

default_attributes(
"authorization" => {
  "sudo" => {
    "users" => ["administrator"],
    "passwordless" => true
  },
  "homebrew" => {
    "user" => "administrator"
  }
})
