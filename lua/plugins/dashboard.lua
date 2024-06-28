-- if true then return {} end

return {
  {
    "nvimdev/dashboard-nvim",
    optional = true,
    opts = function(_, opts)
      -- table.remove(opts.config.center, 6)
      -- table.remove(opts.config.center, 7)

    --   table.insert(opts.config.center, 7, {
    --     action = 'lua require("persistence").load()',
    --     desc = "Bookmarks",
    --     icon = "  ",
    --     key = "b",
    --     key_format = "  %s"
    --   })
    end,
  },
}
