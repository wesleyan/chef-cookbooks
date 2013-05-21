require("awful")
tags = {}
tags[1] = awful.tag({ 1 }, 1,  awful.layout.suit.max.fullscreen)
mytimer = timer({ timeout = 10 })
mytimer:add_signal("timeout", function() awful.util.spawn_with_shell("xsetroot -cursor /usr/share/X11/empty_cursor.xbm /usr/share/X11/empty_cursor.xbm") end)
mytimer:start()
awful.util.spawn_with_shell("xsetroot -cursor /usr/share/X11/empty_cursor.xbm /usr/share/X11/empty_cursor.xbm")
