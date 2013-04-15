name "osx-scanner"
description "This role is specific to machines that are hooked up to scanners"

run_list "recipe[hamrick_vuescan::mac]"