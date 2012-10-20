name "mac"
description "mac image"
run_list "recipe[prepare::mac]", "recipe[sudo]", "recipe[dmg]", 
          "recipe[osxupdate::mac]", "recipe[java::mac]", "recipe[itunes::mac]", 
          "recipe[office::mac]", "recipe[unarchiver::mac]", "recipe[vlc::mac]",
          "recipe[r::mac]", "recipe[rstudio::mac]", 
          "recipe[rhinoceros::mac]", "recipe[sketchup::mac]",
          "recipe[soundhack::mac]", "recipe[supercollider::mac]",
          "recipe[photoshop::mac]", "recipe[illustrator::mac]", "recipe[indesign::mac]", "recipe[dreamweaver::mac]", "recipe[flashpro::mac]", "recipe[premierepro::mac]", "recipe[aftereffects::mac]"
#"recipe[chrome::mac]", "recipe[remotedesktop::mac]",

default_attributes(
"authorization" => {
  "sudo" => {
    "users" => ["administrator"],
    "passwordless" => true
  }
}
)
