local mainMod = "SUPER"
local terminal = "kitty"
-- local terminal = "ghostty"
local menu = "fuzzel -D no"

hl.bind(mainMod .. " + Space", hl.dsp.workspace.toggle_special("dropdown"))
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + V", hl.dsp.window.float({toggle=true}))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("kitty --class=dropdown -e herdr"))


hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + N", hl.dsp.layout "orientationnext")
hl.bind(mainMod .. " + TAB", hl.dsp.layout "rollnext")
hl.bind(mainMod .. " + SHIFT+ TAB", hl.dsp.layout "rollprev")
hl.bind(mainMod .. " + SHIFT + h", hl.dsp.window.move({direction="left"}))
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.window.move({direction="right"}))
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.window.move({direction="down"}))
hl.bind(mainMod .. " + SHIFT + k", hl.dsp.window.move({direction="up"}))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen(true))
hl.bind(mainMod .. " + H",  hl.dsp.focus({direction="left"}))
hl.bind(mainMod .. " + L",  hl.dsp.focus({direction="right"}))
hl.bind(mainMod .. " + J",  hl.dsp.focus({direction="down"}))
hl.bind(mainMod .. " + K",  hl.dsp.focus({direction="up"}))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume alsa_output.pci-0000_00_1f.3.analog-stereo +5%"),{ locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",hl.dsp.exec_cmd("pactl set-sink-volume alsa_output.pci-0000_00_1f.3.analog-stereo -5%"),{ locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute alsa_output.pci-0000_00_1f.3.analog-stereo toggle"),{ locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"))
hl.bind("XF86MonBrightnessUp",hl.dsp.exec_cmd("brightnessctl s 1%+"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 1%-"))
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

