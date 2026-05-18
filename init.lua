-- 启动时加载 ~/.env 到 vim.env，让插件可通过环境变量读取（如 avante 的 api_key_name）
local env_file = vim.fn.expand("~/.env")
if vim.fn.filereadable(env_file) == 1 then
  for line in io.lines(env_file) do
    if not line:match("^%s*#") and not line:match("^%s*$") then
      line = line:gsub("^%s*export%s+", "")
      local key, value = line:match("^%s*([%w_]+)%s*=%s*(.-)%s*$")
      if key and value then
        value = value:gsub('^"(.*)"$', "%1"):gsub("^'(.*)'$", "%1")
        vim.env[key] = value
      end
    end
  end
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
