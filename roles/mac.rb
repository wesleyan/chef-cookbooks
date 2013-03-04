name "mac"
description "mac image"

run_list "recipe[prepare::mac]",
          "recipe[sudo]",  
          # Package providers
          "recipe[dmg]", 
          "recipe[homebrew]",
          # XCode
          "recipe[apple_xcode::mac]",
          # Desktop and Dock
          # "recipe[preference::mac]",
          "recipe[dock::mac]", 
          "recipe[launch_association::mac]",
          #"recipe[desktop_picture::mac]",
          # Core system updates and applications
          #"recipe[apple_osx_updates::mac]", 
          "recipe[oracle_java::mac]", 
          "recipe[printers::mac]", 
          "recipe[sassafras_k2::mac]",
          "recipe[cls_labstats::mac]",
          # Browsers
          "recipe[google_chrome::mac]", 
          "recipe[mozilla_firefox::mac]",
          "recipe[apple_safari::mac]", 
          # Runtimes
          "recipe[adobe_flash_player::mac]", 
          "recipe[microsoft_silverlight::mac]",
          # Core applications
          "recipe[microsoft_office::mac]",
          "recipe[apple_itunes::mac]", 
          "recipe[apple_ilife::mac]",
          "recipe[unarchiver::mac]",
          "recipe[videolan_vlc::mac]",
          # Adobe CS6 Suite
          "recipe[adobe_photoshop_cs6::mac]", 
          "recipe[adobe_illustrator_cs6::mac]", 
          "recipe[adobe_indesign_cs6::mac]",
          "recipe[adobe_dreamweaver_cs6::mac]", 
          "recipe[adobe_flash_professional_cs6::mac]",
          "recipe[adobe_premiere_pro_cs6::mac]", 
          "recipe[adobe_after_effects_cs6::mac]", 
          "recipe[adobe_acrobat_pro::mac]",
          # Research
          "recipe[chnm_zotero::mac]",
          # Stats applications
          "recipe[gnu_r::mac]",
          "recipe[rstudio::mac]",
          # Uncomment when building an image from scratch until we have our own receipt system for custom installers
          #"recipe[ibm_spss::mac]", 
          # 3D modeling/rendering applications
          "recipe[google_earth::mac]",
          "recipe[autodesk_autocad::mac]",
          "recipe[mcneel_rhinoceros::mac]",
          "recipe[trimble_sketchup::mac]",
          # Audio applications
          "recipe[audacity::mac]",
          "recipe[tomerbe_soundhack::mac]", 
          "recipe[supercollider::mac]",
          # Music, Dance & Arts
#          "recipe[troikatronix_isadora::mac]",
          # Natural Sciences & Mathematics
          "recipe[ccp4::mac]",
          "recipe[python::mac]", 
          "recipe[xorg_xquartz::mac]",
          "recipe[schrodinger_pymol::mac]",
          "recipe[atgc_phyml::mac]",
          "recipe[eclipse::mac]", 
          "recipe[aquamacs_emacs::mac]", 
          "recipe[macvim::mac]",
          "recipe[tug_mactex::mac]",
          "recipe[smlnj::mac]",
          "recipe[mrbayes::mac]",
          "recipe[ncbi_cn3d::mac]",
          "recipe[graz_genesis::mac]",
          "recipe[simulation_curriculum_starry_night_pro::mac]",
          # Finalize 
          "recipe[finalize::mac]"        

#"recipe[remotedesktop::mac]",

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
