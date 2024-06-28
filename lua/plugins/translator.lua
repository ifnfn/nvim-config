return {
  {
    "voldikss/vim-translator",
    config = function()
      vim.cmd [[
        let g:translator_target_lang = 'zh'
        let g:translator_default_engines = ['youdao', 'bing']
      ]]
    end,
    setup = function()
      require("core.keybindings").vim_translator()
    end
  },
}
