local wezterm = require("wezterm")
local act = wezterm.action

local M = {}

M.keys = {
  -- === 既存の設定 (ブラウザ互換のタブ操作) ===
  {
    key = "t",
    mods = "CTRL",
    action = act({ SpawnTab = "CurrentPaneDomain" }),
  },
  {
    key = "w",
    mods = "CTRL",
    action = act({ CloseCurrentTab = { confirm = true } }),
  },

  -- === Hyprland風 ペイン操作 (Leader: Ctrl + q 起点) ===

  -- [分割]
  {
    key = "s",
    mods = "LEADER",
    action = act.SplitHorizontal { domain = "CurrentPaneDomain" },
  },
  {
    key = "v",
    mods = "LEADER",
    action = act.SplitVertical { domain = "CurrentPaneDomain" },
  },

  -- [移動]
  { key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
  { key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
  { key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
  { key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },

  -- [閉じる]
  {
    key = "x",
    mods = "LEADER",
    action = act.CloseCurrentPane { confirm = false },
  },

  -- [ペイン最大化] (ウィンドウの中で今のターミナルを広げる)
  -- Ctrl+q -> z
  {
    key = "z",
    mods = "LEADER",
    action = act.TogglePaneZoomState,
  },

  -- === 【追加】ウィンドウ自体のフルスクリーン切り替え ===
  -- Ctrl+q -> f : モニター全体にウィンドウを最大化する (Fullscreen)
  {
    key = "f",
    mods = "LEADER",
    action = act.ToggleFullScreen,
  },
}

M.key_tables = {}

return M