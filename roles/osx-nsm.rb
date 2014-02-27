name "osx-nsm"
description "This role is specific to machines require the software loadset for the Natural Sciences & Mathematics"

run_list  "role[osx-classlab]",
          #"recipe[graz_genesis::mac]", # Not needed this academic year, license expired.
          "recipe[supercollider::mac]"

# Set SuperCollider attribute for version determination
default_attributes("SuperCollider" => {"No-IDE" => true})