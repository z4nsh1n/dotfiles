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
    layout = "master",
  },

  animations = {
    enabled = false,
  },

  master = {
    new_status = 'master',
  },
  input = {
    touchpad = {
      natural_scroll = true,
      disable_while_typing = true,
    }
  }
})

hl.animations = {
}

hl.on("hyprland.start", function ()
  hl.exec_cmd("waybar")
  hl.exec_cmd("kitty --class=dropdown -e herdr")
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

