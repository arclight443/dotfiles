-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local keymap = vim.keymap.set
local telescope = require("telescope.builtin")

local function desc(string)
  return { noremap = true, silent = true, desc = string }
end

keymap("n", "vv", "<C-w>v", desc("Split pane vertically"))
keymap("n", "ss", "<C-w>s", desc("Split pane horizontally"))

keymap("n", "<S-q>", function()
  require("mini.bufremove").delete(0, false)
end, desc("Delete Buffer"))

keymap("n", "<leader>sx", "<cmd>Telescope resume<CR>", desc("Resume Telescope"))
keymap("n", "<leader>fz", "<cmd>Telescope notify<CR>", desc("Notification log"))

-- Tmux
keymap("n", "<M-h>", "<cmd>NvimTmuxNavigateLeft<CR>")
keymap("n", "<M-j>", "<cmd>NvimTmuxNavigateDown<CR>")
keymap("n", "<M-k>", "<cmd>NvimTmuxNavigateUp<CR>")
keymap("n", "<M-l>", "<cmd>NvimTmuxNavigateRight<CR>")
