return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    indent = {
      enabled = true,
      animate = {
        enabled = false,
      },
      scope = {
        enabled = false,
      },
      chunk = {
        -- when enabled, scopes will be rendered as chunks, except for the
        -- top-level scope which will be rendered as a scope.
        enabled = false,
        -- only show chunk scopes in the current window
        only_current = false,
        priority = 200,
        hl = "SnacksIndentChunk", ---@type string|string[] hl group for chunk scopes
        char = {
          corner_top = "╭",
          corner_bottom = "╰",
          horizontal = "─",
          vertical = "│",
          arrow = ">",
        },
      },
    },
    -- input = { enabled = true },
    notifier = { enabled = false },
    quickfile = { enabled = true },
    words = { enabled = true },
    animate = { enabled = false },
    scroll = { enabled = false },
    -- scope = { enabled = false },
    -- statuscolumn = { enabled = false },
    -- notify = { enabled = false },
  },
}
