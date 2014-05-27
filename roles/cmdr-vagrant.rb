name "cmdr-vagrant"
description "Base role for cmdr-vagrant deployment"

run_list  "recipe[apt]",
          "recipe[sudo]",
          #"recipe[xorg::cmdr]",
          "recipe[rabbitmq]",
          "recipe[cmdr-defaults::cmdr-vagrant]",
          "recipe[erlang]",
          "recipe[couchdb]",
          "recipe[nginx::cmdr]",
          "recipe[rvm::cmdr]"

default_attributes(
"authorization" => {
  "sudo" => {
    "users" => ["vagrant"],
    "passwordless" => true
  }
},
"rvm" => {
  "global_gems" => [{"name" => "bundler"},
  {"name" => "rake"}]
})
