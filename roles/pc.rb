name "pc"
description "pc image"
run_list "recipe[windows]", "recipe[7-zip]", "recipe[office::pc]"