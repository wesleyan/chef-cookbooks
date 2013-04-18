name "osx-classlab"
description "Base role for OS X deployment"

          # Include base role.
run_list  "role[osx-base]",
          # Include lab specific recipes.
          "recipe[cls_labstats::mac]",
          "recipe[blackboard_xythosdrive::mac]",
          "recipe[printers::mac]", 
          #"recipe[desktop_picture::mac]",
          "recipe[chnm_zotero::mac]",
          "recipe[finalize::mac]"