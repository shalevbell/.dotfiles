-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Configure LazyVim's root directory detection
-- Look for .git directory first, then fallback to cwd
-- This keeps root at the top-level .git directory
vim.g.root_spec = { ".git", "cwd" }

vim.opt.wrap = true

-- Disable auto-formatting on save
vim.g.autoformat = false

-- Disable netrw which is enabled so snacks explorer isnt opened by default
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
