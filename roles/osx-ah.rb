name "osx-ah"
description "This role is specific to machines require the software loadset for the Center for the Arts"

          # Include the classlab role, which contains the base osx role as well
run_list  "role[osx-classlab]"

# Set OIV dock attribute.
default_attributes("oiv" => {"dock" => true})
