return {
  "folke/noice.nvim",
  opts = {
    lsp = {
      progress = { enabled = false }, -- 关掉 pyright/clangd 等 LSP 后台分析的进度浮窗
    },
    -- 顺手过滤掉常见噪音消息
    routes = {
      { filter = { event = "msg_show", kind = "search_count" }, opts = { skip = true } },
      { filter = { event = "msg_show", find = "written" }, opts = { skip = true } }, -- "X lines written"
    },
  },
}
