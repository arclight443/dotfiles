-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local Util = require("lazyvim.util")
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

keymap("n", "<leader>zn", "<cmd>cd ~/Arclight/config | Telescope git_files<CR>", desc(" NixOS"))
keymap("n", "<leader>zd", "<cmd>cd ~/Arclight/dotfiles/ | Telescope git_files<CR>", desc(" Dotfiles"))

--LazyTerm
vim.keymap.del("t", "<C-h>")
vim.keymap.del("t", "<C-j>")
vim.keymap.del("t", "<C-k>")
vim.keymap.del("t", "<C-l>")
vim.keymap.del("n", "<C-/>")
vim.keymap.del("t", "<C-/>")

local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end

keymap("n", "<M-\\>", lazyterm, { desc = "Terminal (root dir)" })
keymap("t", "<M-\\>", "<cmd>close<cr>", { desc = "Hide Terminal" })

keymap("t", "<M-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
keymap("t", "<M-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
keymap("t", "<M-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
keymap("t", "<M-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })

-- Window resize
vim.keymap.del("n", "<C-up>")
vim.keymap.del("n", "<C-down>")
vim.keymap.del("n", "<C-left>")
vim.keymap.del("n", "<C-right>")

-- Tmux
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")
keymap("n", "<M-h>", "<cmd>NvimTmuxNavigateLeft<CR>", desc("Go to left window"))
keymap("n", "<M-j>", "<cmd>NvimTmuxNavigateDown<CR>", desc("Go to lower window"))
keymap("n", "<M-k>", "<cmd>NvimTmuxNavigateUp<CR>", desc("Go to upper window"))
keymap("n", "<M-l>", "<cmd>NvimTmuxNavigateRight<CR>", desc("Go to right window"))
