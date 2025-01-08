local wezterm = require("wezterm")

return {
   font = wezterm.font_with_fallback({
      "JetBrainsMono Nerd Font",
   }),
   font_size = 14.0,

   enable_wayland = true,

   harfbuzz_features = { "liga=1" },
   animation_fps = 240,
   max_fps = 240,
   window_background_opacity = 0.8,

   enable_tab_bar = false,
   hide_tab_bar_if_only_one_tab = true,

   colors = {
      -- 8 basic colors (ansi)
      ansi = {
         "#282828", -- color0 (black) -> bg0
         "#cc241d", -- color1 (red) -> red0
         "#98971a", -- color2 (green) -> green0
         "#d79921", -- color3 (yellow) -> yellow0
         "#458588", -- color4 (blue) -> blue0
         "#689d6a", -- color5 (purple) -> purple0
         "#8ec07c", -- color6 (cyan) -> aqua
         "#a89984", -- color7 (white) -> gray0
      },

      -- Bright versions of the same colors
      brights = {
         "#928374", -- color8 (bright black) -> gray1
         "#fb4934", -- color9 (bright red) -> red1
         "#b8bb26", -- color10 (bright green) -> green1
         "#fabd2f", -- color11 (bright yellow) -> yellow1
         "#83a598", -- color12 (bright blue) -> blue1
         "#d3869b", -- color13 (bright purple) -> purple1
         "#00ffff", -- color14 (bright cyan) remains as is (not specified in your list)
         "#f9f5d7", -- color15 (bright white) -> fg0 (very light)
      },

      -- Redefine background and foreground colors
      background = "#131313", -- Dark background -> bg0
      -- background = "#000000", -- Dark background -> bg0
      foreground = "#ebdbb2", -- Light text -> fg

      -- Cursor colors
      cursor_bg = "#d79921", -- Cursor background color -> yellow0
      cursor_fg = "#282828", -- Cursor text color -> bg0
      cursor_border = "#fb4934", -- Cursor border color -> red1

      -- Text selection colors
      selection_bg = "#d79921", -- Selection background color -> yellow0
      selection_fg = "#282828", -- Selection text color -> bg0

      -- Marker colors
      -- mark1_foreground = "#282828", -- Text color for mark1 -> bg0
      -- mark1_background = "#b8bb26", -- Background color for mark1 -> green1
      --
      -- mark2_foreground = "#282828", -- Text color for mark2 -> bg0
      -- mark2_background = "#fabd2f", -- Background color for mark2 -> yellow1
      --
      -- mark3_foreground = "#282828", -- Text color for mark3 -> bg0
      -- mark3_background = "#cc241d", -- Background color for mark3 -> red0
   },

   window_padding = {
      left = 5,
      right = 5,
      top = 5,
      bottom = 0,
   },

   window_close_confirmation = "NeverPrompt",

   keys = {
      { key = "v", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") },
      { key = "v", mods = "CTRL", action = wezterm.action.PasteFrom("PrimarySelection") },
   },
   disable_default_key_bindings = true,
}
