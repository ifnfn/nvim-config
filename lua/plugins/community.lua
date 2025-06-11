-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
-- AstroCommunity plugins
-- https://github.com/AstroNvim/astrocommunity

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  {
    "folke/todo-comments.nvim",
    opts = {
      sign_priority = 5, -- higher sign display priority
    },
  },
  {
    "hiphish/rainbow-delimiters.nvim"
  },
}
