-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map jj to escape in insert mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode", noremap = true, silent = true })

-- Map <leader>t to open terminal at root directory
vim.keymap.set("n", "<leader>t", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })

-- Map 1 to go to end of line
vim.keymap.set({ "n", "v" }, "9", "$", { desc = "End of line", noremap = true, silent = true })
