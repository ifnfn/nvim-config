return {
  "milanglacier/minuet-ai.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "InsertEnter",
  config = function()
    require("minuet").setup({
      provider = "openai_compatible",
      notify = "error", -- 仅在出错时提示，避免每次请求都弹
      n_completions = 1,
      context_window = 512,
      virtualtext = {
        auto_trigger_ft = { "*" },
        keymap = {
          accept = "<Tab>",      -- 弹窗/snippet 不在时，Tab 接受 ghost text
          accept_line = "<C-l>", -- 仅接受一行
          prev = "<C-h>",        -- 上一个候选
          next = "<C-]>",        -- 下一个候选
          dismiss = "<C-g>",     -- 取消
        },
      },
      provider_options = {
        openai_compatible = {
          api_key = "QWEN_API_KEY",
          end_point = (vim.env.QWEN_BASE_URL or "") .. "/chat/completions",
          model = vim.env.QWEN_MODEL or "Qwen3.6-Plus-DogFooding",
          name = "Qwen",
          optional = {
            stop = nil,
            max_tokens = 256,
          },
        },
      },
    })
  end,
}
