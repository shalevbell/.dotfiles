return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        -- Point markdownlint at our config to turn off MD013 (line length
        -- over 80), while keeping the rest of the LazyVim markdown extra's
        -- default rules active.
        ["markdownlint-cli2"] = {
          prepend_args = {
            "--config",
            vim.fn.stdpath("config") .. "/.markdownlint.jsonc",
          },
        },
      },
    },
  },
}
