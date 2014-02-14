name "osx-lrc"
description "This role is specific to machines require the software loadset for Languages"

run_list  "role[osx-classlab]",
          "recipe[audacity::mac]",
          "recipe[aegisub::mac]",
          "recipe[apple_quicktime_pro::mac]",
          "recipe[roxio_toast_titanium::mac]",
          "recipe[adobe_dreamweaver_cs6::mac]"