local awful     = require("awful")
local pulse     = require("pulseaudio_widget")
--[[ Show/Hide wibar ]]
awful.key({ modkey }, "b",
          function ()
              myscreen = awful.screen.focused()
              myscreen.mywibox.visible = not myscreen.mywibox.visible
          end,
          {description = "toggle statusbar"}
)
--]]

--[[ Screen Shot ]]
 awful.key({ }, "Print", function () awful.util.spawn("scrot -e 'mv $f ~/screenshots/ 2>/dev/null'", false) end)
--]]

--[[ Pulse keys ]]
awful.util.table.join(
  -- Audio
  awful.key({ }, "XF86AudioRaiseVolume", pulse.volume_up),
  awful.key({ }, "XF86AudioLowerVolume", pulse.volume_down),
  awful.key({ }, "XF86AudioMute",  pulse.toggle_muted),
  -- Microphone
  awful.key({"Shift"}, "XF86AudioRaiseVolume", pulse.volume_up_mic),
  awful.key({"Shift"}, "XF86AudioLowerVolume", pulse.volume_down_mic),
  awful.key({ }, "XF86MicMute",  pulse.toggle_muted_mic)
)
--]]
