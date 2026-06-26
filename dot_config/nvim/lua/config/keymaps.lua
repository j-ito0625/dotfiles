-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- タブ操作
keymap.set("n", "te", "<cmd>tabedit<cr>", { desc = "New Tab" })
keymap.set("n", "<tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
keymap.set("n", "<s-tab>", "<cmd>tabprev<cr>", { desc = "Prev Tab" })

-- ウィンドウ分割
keymap.set("n", "ss", "<cmd>split<cr>", { desc = "Split Horizontal" })
keymap.set("n", "sv", "<cmd>vsplit<cr>", { desc = "Split Vertical" })

-- ペイン間移動
keymap.set("n", "sh", "<C-w>h", { desc = "Move to Left Pane" })
keymap.set("n", "sj", "<C-w>j", { desc = "Move to Lower Pane" })
keymap.set("n", "sk", "<C-w>k", { desc = "Move to Upper Pane" })
keymap.set("n", "sl", "<C-w>l", { desc = "Move to Right Pane" })
