name "osx-ss"
description "This role is specific to machines require the software loadset for the Social Sciences"

run_list  "recipe[chnm_zotero::mac]",
          "recipe[gnu_r::mac]",
          "recipe[rstudio::mac]",
          "recipe[psyscope::mac]",
          "recipe[statacorp_stata::mac]",
          "recipe[ibm_spss::mac]"