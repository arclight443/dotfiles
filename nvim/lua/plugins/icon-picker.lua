return {
  "ziontee113/icon-picker.nvim",
  keys = {
    {
      "<leader>ii",
      "<cmd>IconPickerInsert emoji nerd_font alt_font symbols<cr>",
      desc = "Insert Icon",
    },
    {
      "<leader>iy",
      "<cmd>IconPickerYank emoji nerd_font alt_font symbols<cr>",
      desc = "Yank Icon",
    },
  },
  opts = {
    disable_legacy_commands = true,
  },
}
