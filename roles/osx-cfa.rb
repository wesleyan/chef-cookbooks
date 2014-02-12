name "osx-cfa"
description "This role is specific to machines require the software loadset for the Center for the Arts"

          # Include the classlab role, which contains the base osx role as well
run_list  "role[osx-classlab]",
          "recipe[apple_final_cut_pro::mac]",
          "recipe[adobe_after_effects_cs6::mac]",
          "recipe[adobe_dreamweaver_cs6::mac]",
          "recipe[adobe_flash_professional_cs6::mac]",
          "recipe[adobe_premiere_pro_cs6::mac]",
          "recipe[apple_compressor::mac]",
          "recipe[apple_logic_pro::mac]",
          "recipe[autodesk_autocad::mac]",
          "recipe[mcneel_rhinoceros::mac]",
          "recipe[mckernon_lightwright::mac]",
          "recipe[tomerbe_soundhack::mac]",
          "recipe[troikatronix_isadora::mac]",
          "recipe[quark_quarkxpress::mac]",
          "recipe[extensis_utc::mac]",
          "recipe[nemetschek_vectorworks::mac]"