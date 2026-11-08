local S = vim.diagnostic.severity

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        -- Show the message only for the line the cursor is on
        virtual_text = { current_line = true },
        -- Underline and gutter signs only for warnings and errors; hints and info stay silent
        underline = { severity = { min = S.WARN } },
        signs = { severity = { min = S.WARN } },
        float = { border = "rounded", source = "if_many" },
      },
      -- Inlay hints off by default; toggle with <leader>uh when you need them
      inlay_hints = { enabled = false },
    },
  },
}
