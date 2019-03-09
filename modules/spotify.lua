--[[ "https://gist.github.com/alepmaros ]]

local naughty 		= require("naughty")

-- Changing spotify notifications.
naughty.config.presets.spotify = { 
    -- if you want to disable Spotify notifications completely, return false
    callback = function(args)
        return true
    end,

    -- Adjust the size of the notification
    height = 100,
    width  = 400,
    -- Guessing the value, find a way to fit it to the proper size later
    icon_size = 90
}
table.insert(naughty.dbus.config.mapping, {{appname = "Spotify"}, naughty.config.presets.spotify})
