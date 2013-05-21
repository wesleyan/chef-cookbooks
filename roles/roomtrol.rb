name "roomtrol"
description "Base role for roomtrol deployment"

run_list  "recipe[apt::roomtrol]",
          "recipe[sudo]",
          "recipe[xorg::roomtrol]",
          "recipe[erlang::roomtrol]",
          "recipe[rabbitmq::roomtrol]",
          "recipe[roomtrol-randoms::roomtrol]",
          "recipe[nginx::roomtrol]",
          "recipe[rvm::roomtrol]"
default_attributes(
"rvm" => {
  "global_gems" => [{"name" => "bundler"},
  {"name" => "rake","version" => "0.9.2"}]
})
