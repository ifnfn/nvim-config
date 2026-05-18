if true then return {} end -- 已被 minuet-ai 取代（走 IdeaLab Qwen），需要时移除此行恢复

return {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    config = function()
        require("copilot").setup({
            suggestion = {
                enabled = true,
                auto_trigger = true,
                debounce = 100,
            },
            filetypes = {
                python = true,
                javascript = true,
                typescript = true,
                lua = true,
                go = true,
                rust = true,
            },
        })
    end
}
