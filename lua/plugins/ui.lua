return {
  -- { "navarasu/onedark.nvim" },
  { "Mofiqul/vscode.nvim" },
  -- { "projekt0n/github-nvim-theme" },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    opts = {
      options = {
        theme = 'nord'
      },
      sections = {
        lualine_c = {
          {
            'filename',
            path = 1, -- Just patch this so that I get relative paths instead name

          }
        }
      }
    }
  },
  -- { # 不要这个鬼插件了
  --   'lukas-reineke/indent-blankline.nvim',
  --   config = function ()
  --     require('ibl').setup()
  --     vim.opt.list = true
  --     vim.opt.listchars:append("eol:↴")
  --   end
  -- },
}
