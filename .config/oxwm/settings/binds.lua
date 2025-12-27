--- @module 'owxm'


-- Set up variables 
local terminal = "wezterm"
local mod = "Mod4"

oxwm.set_terminal(terminal)

oxwm.key.bind({mod}, "Return", oxwm.spawn_terminal());