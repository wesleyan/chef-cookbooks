name "win-base"
description "Base role for Windows deployment"
run_list "recipe[windows]", "recipe[7-zip]", "recipe[office::pc]"