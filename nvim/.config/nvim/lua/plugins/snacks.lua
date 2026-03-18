return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      -- Set to false so doesnt open by default when opening nvim
      replace_netrw = false
    },
    picker = {
      sources = {
        explorer = {
          hidden = true,
        },
        files = {
          args = {
            "--type=f",
            "--hidden",
            "--ignore-case",
          },
        },
        grep = {
          args = {
            "--column",
            "--line-number",
            "--no-heading",
            "--color=never",
            "--ignore-case",
            "--hidden",
          },
        },
      },
    },
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
_          _ _                            _     _
| |__   ___| | | ___   __      _____  _ __| | __| |
| '_ \ / _ \ | |/ _ \  \ \ /\ / / _ \| '__| |/ _` |
| | | |  __/ | | (_) |  \ V  V / (_) | |  | | (_| |
|_| |_|\___|_|_|\___/    \_/\_/ \___/|_|  |_|\__,_|
      ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "s", desc = "Restore Session", action = ":lua require('persistence').load()" },
          { icon = " ", key = "p", desc = "Projects", action = ':lua LazyVim.pick("projects")()' },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
