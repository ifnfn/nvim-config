return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sources = { "filesystem", "buffers", "git_status" },
    window = {
      width = 40,
    },
    filesystem = {
      bind_to_cwd = false,
      group_empty_dirs = true,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
      filtered_items = {
        never_show = {
          --   ".DS_Store",
          --   "thumbs.db",
          "CMakeUserPresets.json",
          "failed_info.json",
          "conanbuildinfo.json",
          "__pycache__",
        },
        hide_dotfiles = true,
      }
    },

    default_component_configs = {
      indent = {
        with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
      git_status = {
        symbols = {
          deleted   = "󰬋",
          renamed   = "󰬙",
          ignored   = "󰬐",
          unstaged  = "", --"󰬜",
          staged    = "󰬚",
          conflict  = "󰬊",
          added     = " ",
          modified  = " ",
          removed   = " ",
          untracked = "󰬛",
          -- unmerged = "",
        },
      },
    }
  }
}
