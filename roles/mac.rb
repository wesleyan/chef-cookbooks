name "mac"
description "mac image"

          # Core recipes
run_list  "recipe[prepare::mac]",
          "recipe[sudo]",
          # Package providers
          "recipe[dmg]",
          # XCode
          "recipe[apple_xcode::mac]",
          "recipe[homebrew]",
          # Desktop and Dock
          # "recipe[preference::mac]",
          "recipe[dock::mac]", 
          "recipe[launch_association::mac]",
          #"recipe[desktop_picture::mac]",
          # Core system updates and applications
          #"recipe[apple_osx_updates::mac]", 
          "recipe[apple_airport::mac]",
          "recipe[oracle_java::mac]", 
          "recipe[printers::mac]", 
          "recipe[sassafras_k2::mac]",
          "recipe[cls_labstats::mac]",
          "recipe[blackboard_xythosdrive::mac]",
          # Browsers
          "recipe[google_chrome::mac]", 
          "recipe[mozilla_firefox::mac]",
          # No need for Safari recipe at this time as 6.0.3 is bundled with 10.8.3
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
          # Adobe CS6 Suite
          "recipe[adobe_photoshop_cs6::mac]", 
          "recipe[adobe_illustrator_cs6::mac]", 
          "recipe[adobe_indesign_cs6::mac]",
          "recipe[adobe_dreamweaver_cs6::mac]", 
          "recipe[adobe_flash_professional_cs6::mac]",
          "recipe[adobe_premiere_pro_cs6::mac]", 
          "recipe[adobe_after_effects_cs6::mac]", 
          "recipe[adobe_acrobat_pro::mac]",
          # Social Sciences
          "recipe[chnm_zotero::mac]",
          "recipe[gnu_r::mac]",
          "recipe[rstudio::mac]",
          "recipe[psyscope::mac]",
          "recipe[statacorp_stata::mac]",
          # Need to rebuild SPSS as a composer pkg
          #"recipe[ibm_spss::mac]", 
          # Center for the Arts
          "recipe[apple_final_cut_pro::mac]",
          "recipe[apple_compressor::mac]",
          "recipe[autodesk_autocad::mac]",
          "recipe[google_earth::mac]",
          "recipe[mcneel_rhinoceros::mac]",
          "recipe[trimble_sketchup::mac]",
          "recipe[audacity::mac]",
          "recipe[makemusic_finale::mac]",
          "recipe[mckernon_lightwright::mac]",
          "recipe[tomerbe_soundhack::mac]", 
          "recipe[supercollider::mac]",
          "recipe[troikatronix_isadora::mac]",
          "recipe[quark_quarkxpress::mac]",
          # Natural Sciences & Mathematics
          "recipe[ccp4::mac]",
          "recipe[xorg_xquartz::mac]",
          "recipe[python::mac]", 
          #"recipe[schrodinger_pymol::mac]",
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
          "recipe[synergy_kaleidagraph::mac]",
          "recipe[wolfram_mathematica::mac]",
          "recipe[perkinelmer_chemdraw_pro::mac]",
          # To be moved to specific roles in production
          "recipe[hamrick_vuescan::mac]",
          "recipe[extensis_utc::mac]",
          "recipe[apple_logic_pro::mac]",
          "recipe[cisco_jabber_video::mac]",
          "recipe[microsoft_skype::mac]",  
          "recipe[cycling74_max::mac]", 
          "recipe[imb_spss::mac]",
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
