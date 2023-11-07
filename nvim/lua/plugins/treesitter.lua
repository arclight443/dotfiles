return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, {
        "json",
        "json5",
        "jsonc",
        "terraform",
        "hcl",
        "dockerfile",
        "ninja",
        "python",
        "rst",
        "toml",
        "typescript",
        "tsx",
      })
    end
  end,
}
