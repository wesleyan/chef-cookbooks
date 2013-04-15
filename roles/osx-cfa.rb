name "osx-cfa"
description "This role is specific to machines require the software loadset for the Center for the Arts"

run_list  "recipe[apple_final_cut_pro::mac]",
          "recipe[apple_compressor::mac]",
          "recipe[apple_logic_pro::mac]",
          "recipe[autodesk_autocad::mac]",
          "recipe[cycling74_max::mac]", 
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
          "recipe[extensis_utc::mac]"