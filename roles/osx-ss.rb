name "osx-ss"
description "This role is specific to machines require the software loadset for the Social Sciences"

run_list  "role[osx-classlab]",
          "recipe[gnu_r::mac]",
          "recipe[ibm_spss::mac]",
          "recipe[muthen_mplus::mac]",
          "recipe[psyscope::mac]",
          "recipe[rstudio::mac]",
          "recipe[statacorp_stata::mac]",
          "recipe[sas_jmp::mac]"