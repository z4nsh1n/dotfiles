hl.monitor({
  output = "",
  mode = "preferred",
  position = "auto",
  scale = "auto"
})



hl.env("XCURSOR_SIZE", "32")
hl.env("HYPRCURSOR_SIZE", "32")

require "config.binds"

hl.config({
  general = {
    gaps_out = 3,
    layout = "master",
  },
  misc = {
    disable_hyprland_logo = true,
    force_default_wallpaper =false,
  },
  decoration = {
    rounding = 5,
  },
  animations = {
    enabled = false,
  },

  master = {
    new_status = 'master',
  },
  input = {
    touchpad = {
      -- clickfinger_behavior = true,
      tap_to_click = false,
      natural_scroll = true,
      disable_while_typing = true,
    }
  }
})

hl.on("hyprland.start", function ()
  hl.exec_cmd("waybar")
  hl.exec_cmd("kitty --class=dropdown -e herdr")
  hl.exec_cmd("swaybg -m stretch -i \"/home/zanshin/wallpapers/programmer-quotes-3840x2160-18794.jpg\"")
end)

hl.window_rule({
    name  = "dropdown Terminal",
    -- match = { title="dropdown" },
    match = { class = "^(dropdown)$" },
    workspace = "special:dropdown silent",
    float = true,
    move = {0,0},
    size = {"(monitor_w)", "(monitor_h*0.6)"},
    -- border_size = 20,
})

