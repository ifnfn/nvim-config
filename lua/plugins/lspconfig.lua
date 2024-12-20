-- add pyright to lspconfig
return {
  -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
  { import = "lazyvim.plugins.extras.lang.json" },
  -- { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.python" },
  { import = "lazyvim.plugins.extras.lang.clangd" },
  { import = "lazyvim.plugins.extras.lang.cmake" },
  { import = "lazyvim.plugins.extras.lang.yaml" },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      inlay_hints = {
        enabled = false,
      },
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {

        },
        clangd = {

        },
      },
      diagnostics = {
        underline = false,
        update_in_insert = false,
        virtual_text = false,
        -- virtual_text = {
        --     spacing = 4,
        --     source = "if_many",
        --     prefix = "●",
        --     -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
        --     -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
        --     -- prefix = "icons",
        --   },

        severity_sort = true,
        -- signs = false,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = LazyVim.config.icons.diagnostics.Error,
            [vim.diagnostic.severity.WARN] = LazyVim.config.icons.diagnostics.Warn,
            [vim.diagnostic.severity.HINT] = LazyVim.config.icons.diagnostics.Hint,
            [vim.diagnostic.severity.INFO] = LazyVim.config.icons.diagnostics.Info,
          },
        },
      }
    },
  },
}
