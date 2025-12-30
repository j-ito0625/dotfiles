local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- === ここに Leader Key (アクションキー) の設定を追加 ===
-- タイムアウトは1000ms (1秒) に設定しています。
-- Ctrl + q を押した後、1秒以内に次のキーを押すとコマンドが実行されます。
config.leader = { key = 'q', mods = 'CTRL', timeout_milliseconds = 1000 }
-- =======================================================

config.automatically_reload_config = true
config.font = wezterm.font_with_fallback({
  "HackGen Console NF",
  "Noto Color Emoji",
})
config.font_size = 12.0

config.use_ime = true
config.window_background_opacity = 0.80
config.macos_window_background_blur = 30
config.window_decorations = "RESIZE"
config.default_prog = { "pwsh.exe", "-NoLogo" }

config.window_frame = {
   inactive_titlebar_bg = "none",
   active_titlebar_bg = "none",
}
config.window_background_gradient = {
   colors = { "#191830" },
}

config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false
config.colors = {
  tab_bar = {
    inactive_tab_edge = "none",
  },
  ansi = {
    "#15161e", -- Black
    "#f7768e", -- Red
    "#9ece6a", -- Green
    "#e0af68", -- Yellow (コマンドによく使われる)
    "#7aa2f7", -- Blue (フォルダによく使われる)
    "#bb9af7", -- Magenta (紫！ここを好みの紫にするとアクセントになります)
    "#7dcfff", -- Cyan
    "#a9b1d6", -- White
  },
  brights = {
    "#414868", -- Bright Black (コメントアウト文字など)
    "#f7768e", -- Bright Red
    "#9ece6a", -- Bright Green
    "#e0af68", -- Bright Yellow
    "#7aa2f7", -- Bright Blue
    "#bb9af7", -- Bright Magenta
    "#7dcfff", -- Bright Cyan
    "#c0caf5", -- Bright White
  },
}
-- (以下、タブの見た目設定などはそのままでOK)
local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_lower_right_triangle
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_upper_left_triangle

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local background = "#5c6d74"
  local foreground = "#FFFFFF"
  local edge_background = "none"
  if tab.is_active then
    background = "#ae8b2d"
    foreground = "#FFFFFF"
  end
  local edge_foreground = background
  local title = "   " .. wezterm.truncate_right(tab.active_pane.title, max_width - 1) .. "   "
  return {
     { Background = { Color = edge_background } },
     { Foreground = { Color = edge_foreground } },
     { Text = SOLID_LEFT_ARROW },
     { Background = { Color = background } },
     { Foreground = { Color = foreground } },
     { Text = title },
     { Background = { Color = edge_background } },
     { Foreground = { Color = edge_foreground } },
     { Text = SOLID_RIGHT_ARROW },
  }
end)

local keybinds = require("keybinds")
config.keys = keybinds.keys
config.key_tables = keybinds.key_tables

return config