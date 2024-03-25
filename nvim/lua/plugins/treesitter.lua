return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  main = "nvim-treesitter.configs",
  dev = true,
  opts = {
    auto_install = false,
    ensure_installed = {},
    autotag = {
      enable = true,
    },
    highlight = {
      -- `false` will disable the whole extension
      enable = true,
      additional_vim_regex_highlighting = { "markdown" },
    },
    vim.filetype.add({
      pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
    }),
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<CR>",
        node_incremental = "<CR>",
        scope_incremental = "<S-CR>",
        node_decremental = "<BS>",
      },
    },
  },
}
