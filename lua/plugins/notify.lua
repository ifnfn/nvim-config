-- if true then return {} end
return {
  "rcarriga/nvim-notify",
  keys = {
    {
      "<leader>un",
      function()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Dismiss All Notifications",
    },
  },
  opts = {
    level = 1,
    stages = "static",
    timeout = 3000,
    render = "simple",     -- default, simple, minimal, compact
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
  },
  init = function()
    local notify = require("notify")
    notify.dismiss({ silent = true, pending = true })
    LazyVim.on_very_lazy(function()
      vim.notify = notify.notify
    end)
  end,
}
