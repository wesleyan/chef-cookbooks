name "osx-classlab"
description "Base role for OS X deployment in Labs and Classrooms"

          # Include base role.
run_list  "role[osx-base]",
          # Include class/lab specific recipes.
          "recipe[cls_labstats::mac]",
          "recipe[blackboard_xythosdrive::mac]",
          "recipe[printers::mac]", 
          #"recipe[desktop_picture::mac]",
          "recipe[chnm_zotero::mac]",
          "recipe[turning_technologies_turningpoint::mac]",
          "recipe[thomson_reuters_endnote::mac]",
          "recipe[handbrake::mac]",
          "recipe[finalize::mac]"

default_attributes(
"prepare" => {
  # Turn on bind-to-domain 
  "bind" => true, 
  # Turn on delete inactive users and set the timeframe to 15 days.
  "inactivity" => 15
  })