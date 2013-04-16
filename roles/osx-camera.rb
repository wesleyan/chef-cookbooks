name "osx-camera"
description "This role is specific to machines that have or are hooked up to a camera for video conferencing"

run_list  "role[osx-base]",
          "recipe[cisco_jabber_video::mac]",
          "recipe[microsoft_skype::mac]"  