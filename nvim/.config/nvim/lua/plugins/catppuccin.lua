return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      -- Must be lowercase; an invalid name falls back to mocha
      flavour = "macchiato",
      -- Use the Ghostty background so the editor and terminal padding match
      transparent_background = true,
      -- Keep popups opaque so they stay readable over the transparent background
      float = { transparent = false, solid = false },
      dim_inactive = { enabled = true },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- Neovim 0.12 ships a built-in "catppuccin" scheme that hides the plugin;
      -- the flavour name exists only in the plugin, so lazy.nvim loads it
      colorscheme = "catppuccin-macchiato",
    },
  },
}
