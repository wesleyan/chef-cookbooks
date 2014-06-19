name "cmdr"
description "Base role for cmdr deployment"

run_list  "recipe[apt]",
          "recipe[sudo]",
          "recipe[xorg::cmdr]",
          "recipe[rabbitmq]",
          "recipe[cmdr-defaults::cmdr]",
          "recipe[erlang]",
          "recipe[couchdb]",
          "recipe[nginx::cmdr]",
          "recipe[rvm::cmdr]"

default_attributes(
"authorization" => {
  "sudo" => {
    "users" => ["cmdr"],
    "passwordless" => true
  }
},
"rvm" => {
  "global_gems" => [{"name" => "bundler"},
  {"name" => "rake"}]
})
