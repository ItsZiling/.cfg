local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end

-- font
config.font_size = 18
config.line_height = 1.2
config.font = wezterm.font({
  { family = "JetBrains Mono", scale = 1.2 },
})

-- Colors
config.color_scheme = "Tokyo-night"
config.color = {
  cursor_bg = "white",
  cursor_border = "white"
}

-- Windows and appearance
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.use_fancy_tab_bar = false
config.default_cursor_style = "BlinkingBar"

-- Background
config = {
  background = {
    {
      source = {
        File = "$HOME/wallpapers/purple_night.jpg"
      },
      hsb = { 
        hue = 1.0,
        saturation = 1.0,
        brightness = 0.50,
      },
      width = "100%", 
      height = "100%",
    },
    {
      source = { 
        Color = "#282c40",
      },
      width = "100%",
      height = "100%",
      opacity = 0.50,
    },
  },
}

return config
