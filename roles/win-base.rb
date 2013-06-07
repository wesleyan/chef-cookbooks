name "win-base"
description "Base role for Windows deployment"
run_list "recipe[windows]",
  "recipe[7-zip]",
  "recipe[videolan_vlc::win]",
  "recipe[python::win]",
  "recipe[gnu_r::win]",
  "recipe[adobe_photoshop_cs6::win]",
  "recipe[adobe_after_effects_cs6::win]",
  "recipe[adobe_illustrator_cs6::win]",
  "recipe[adobe_premiere_pro_cs6::win]",
  "recipe[notepad_plus_plus]",
  "recipe[oracle_java::win]"
