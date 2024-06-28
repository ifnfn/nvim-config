-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
local b = vim.b
local g = vim.g

opt.spell = false


-- 设置全局主题
g.colors_name = "gruvbox"

-- Global Settings --
-- 高亮光标行
opt.cursorline = true

-- 文件在外部加载时，重新打开文件
opt.autoread = true

-- 显示文件名在终端标题
opt.title = true
-- 不懂的配置，
opt.swapfile = false
opt.backup = false

-- 更新时间
opt.updatetime = 50
-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.signcolumn = "yes"
-- 持久化撤销历史
opt.undofile = true
-- 撤销文件保存路径
opt.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')
-- 加载启用时，当前目录的.vimrc or .exrc
opt.exrc = true
-- 禁用自动换行
opt.wrap = true
-- 自动补全不自动选中
g.completeopt = "menu,menuone,noselect,noinsert"
-- 搜索时高亮
opt.hlsearch = true

-- 搜索时忽略大小写
opt.ignorecase = true
opt.smartcase = false

--配置搜索时自动完成选项
-- opt.completeopt = { "menuone", "noselect" }
-- terminal --
-- opt.wildmenu = true

-- 行号--
opt.number = true
opt.relativenumber = true

-- clipboard --
opt.clipboard:append("unnamedplus")

-- Buffer Settings --
-- buffer.fileenconding = "utf-8"

-- mouse --
opt.mouse = "a"

-- Global Settings --
--  g.mapleader = " "
g.autoformat = false -- globally
b.autoformat = false -- buffer-local

-- color --
opt.termguicolors = true
opt.signcolumn = "yes"

-- status --
-- 设置为false配合插件使用
opt.showmode = false

-- split --
opt.splitright = true
opt.splitbelow = true

-- 设置回退键的行为，允许删除缩进，空格，行首字符
opt.backspace = { "indent", "eol", "start" }
-- 自动转行
-- opt.textwidth = 80

-- tabline --
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.shiftround = true
opt.autoindent = true
opt.smartindent = true

undodir = vim.fn.expand "$HOME" .. "/.cache/vim-undo" -- set an undo directory
