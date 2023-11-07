return {
  {
    "eddyekofo94/gruvbox-flat.nvim",
    priority = 1000,
    enabled = true,
    config = function()
      vim.g.gruvbox_dark_sidebar = false
      vim.g.gruvbox_colors = { bg_sidebar = "#00000000" }
      vim.g.gruvbox_transparent = true
      vim.cmd([[colorscheme gruvbox-flat]])
    end,
  },
}
