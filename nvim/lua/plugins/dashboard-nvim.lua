return {
  "nvimdev/dashboard-nvim",
  opts = function(_, opts)
    local config_nixos = {
      action = "cd ~/Arclight/config | Telescope git_files",
      desc = " Configure NixOS",
      icon = " ",
      key = "zn",
      key_format = "  %s",
    }

    local config_neovim = {
      action = "cd ~/Arclight/dotfiles/nvim | Telescope git_files",
      desc = " Configure Neovim",
      icon = " ",
      key = "zv",
      key_format = "  %s",
    }

    local config_run_or_raise = {
      action = "cd ~/Arclight/dotfiles/run-or-raise | e shortcuts.conf",
      desc = " Configure Run-or-raise",
      icon = " ",
      key = "zr",
      key_format = "  %s",
    }

    local logo = [[

	    _._     _,-'\"\"`-.                     
 	   (,-.`._,'(       |\\`-/|                 
 	       `-.-' \\ )-`( , o o)    󰄛  KittyVim 
 	              `-   \\`_`\"'-                
    ]]

    opts.config.header = vim.split(logo, "\n")
    table.remove(opts.config.center, 5) --removes default 'config' option
    table.insert(opts.config.center, 5, config_nixos)
    table.insert(opts.config.center, 6, config_neovim)
    table.insert(opts.config.center, 7, config_run_or_raise)
  end,
}
