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

    local config_dotfiles = {
      action = "cd ~/Arclight/dotfiles/ | Telescope git_files",
      desc = " Configure Dotfiles",
      icon = " ",
      key = "zd",
      key_format = "  %s",
    }

    local logo = [[

 ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
 ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
 ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
 ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
 ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
 ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
                                                   
    ]]

    opts.config.header = vim.split(logo, "\n")
    table.remove(opts.config.center, 5) --removes default 'config' option
    table.insert(opts.config.center, 5, config_nixos)
    table.insert(opts.config.center, 6, config_dotfiles)
  end,
}
