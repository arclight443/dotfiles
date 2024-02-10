return {
  {
    "eddyekofo94/gruvbox-flat.nvim",
    priority = 1000,
    enabled = true,
    config = function()
      vim.g.gruvbox_dark_sidebar = false
      vim.g.gruvbox_colors = { bg_sidebar = "#00000000" }
      vim.g.gruvbox_transparent = true
      --vim.g.gruvbox_transparent = false
      vim.g.gruvbox_hide_inactive_statusline = true
      --vim.g.gruvbox_colors = {
      --  bg = "#000000",
      --  bg2 = "#000000",
      --  --black = "#000000",
      --}
      vim.cmd([[colorscheme gruvbox-flat]])
    end,
  },
}
