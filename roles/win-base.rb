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
  "recipe[adobe_indesign_cs6::win]",
  "recipe[adobe_flash_professional_cs6::win]",
  "recipe[adobe_dreamweaver_cs6::win]",
  "recipe[notepad_plus_plus]",
  "recipe[oracle_java::win]",
  "recipe[hamrick_vuescan::win]",
  "recipe[rstudio::win]",
  "recipe[google_chrome::win]"
