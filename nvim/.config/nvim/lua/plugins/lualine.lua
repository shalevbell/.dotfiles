-- Show the current git repo name in the statusline, before the branch
return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    table.insert(opts.sections.lualine_b, 1, {
      function()
        return vim.fs.basename(LazyVim.root.git())
      end,
      icon = "",
    })
  end,
}
