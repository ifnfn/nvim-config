return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" },
  config = true,
  cmd = {
    "ClaudeCode",
    "ClaudeCodeFocus",
    "ClaudeCodeSend",
    "ClaudeCodeAdd",
    "ClaudeCodeDiffAccept",
    "ClaudeCodeDiffDeny",
  },
  keys = {
    { "<leader>k",  nil,                              desc = "Claude Code" },
    { "<leader>kk", "<cmd>ClaudeCode<cr>",            desc = "Toggle Claude" },
    { "<leader>kf", "<cmd>ClaudeCodeFocus<cr>",       desc = "Focus Claude" },
    { "<leader>kr", "<cmd>ClaudeCode --resume<cr>",   desc = "Resume Claude" },
    { "<leader>kc", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
    { "<leader>ka", "<cmd>ClaudeCodeDiffAccept<cr>",  desc = "Accept diff" },
    { "<leader>kd", "<cmd>ClaudeCodeDiffDeny<cr>",    desc = "Deny diff" },
    { "<leader>kb", "<cmd>ClaudeCodeAdd %<cr>",       desc = "Add current buffer" },
    { "<leader>ks", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send selection" },
  },
}
