name "roomtrol"
description "Base role for roomtrol deployment"

run_list  "recipe[apt]",
          "recipe[sudo]",
          "recipe[xorg::roomtrol]",
          "recipe[rabbitmq::roomtrol]",
          "recipe[roomtrol-randoms::roomtrol]",
          "recipe[erlang]",
          "recipe[couchdb::source]",
          "recipe[nginx::roomtrol]",
          "recipe[rvm::roomtrol]"

default_attributes(
"authorization" => {
  "sudo" => {
    "users" => ["roomtrol"],
    "passwordless" => true
  }
},
"rvm" => {
  "global_gems" => [{"name" => "bundler"},
  {"name" => "rake","version" => "0.9.2"}]
})
