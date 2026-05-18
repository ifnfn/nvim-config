# 💤 My LazyVim

基于 [LazyVim](https://github.com/LazyVim/LazyVim) 的个人 Neovim 配置。

## 快捷键速查

> Leader 键 = `<Space>`。下表只列**自定义/插件**键位，LazyVim 默认键位见 [官方文档](https://www.lazyvim.org/keymaps)。

### 🔍 文件查找 / 搜索（fff.nvim + fzf-lua）

| 键 | 作用 |
| --- | --- |
| `<leader>ff` | FFFind 文件（fff.nvim，frecency 排序） |
| `<leader>fg` | 实时 grep（plain/regex/fuzzy 三模式，`<S-Tab>` 切换） |
| `<leader>fz` | 模糊 grep |
| `<leader>fc` | 搜索当前光标下的单词 |
| `\\` | 跳转列表（FzfLua jumps） |
| `<leader>ba` | Buffer 列表（FzfLua buffers） |

### 🪟 Buffer / 窗口

| 键 | 作用 |
| --- | --- |
| `L` | 下一个 buffer |
| `H` | 上一个 buffer |

### 💻 终端（toggleterm）

| 键 | 作用 |
| --- | --- |
| `<leader>to` | 默认开关（横向） |
| `<leader>tf` | 浮动终端 |
| `<leader>th` | 横向分屏（10 行） |
| `<leader>tv` | 纵向分屏（10 列） |
| `<leader><Esc>` | 终端模式 → 普通模式 |

### 🤖 AI 助手

#### Claude Code（claudecode.nvim，走 IdeaLab）

| 键 | 作用 |
| --- | --- |
| `<leader>kk` | 开/关 Claude Code 终端 |
| `<leader>kf` | 聚焦到 Claude 窗口 |
| `<leader>kr` | `--resume` 恢复上次会话 |
| `<leader>kc` | `--continue` 继续最近会话 |
| `<leader>kb` | 把当前 buffer 加进 CC 上下文 |
| `<leader>ks` (visual) | 把选区发送给 Claude |
| `<leader>ka` | 接受 Claude 提的 diff |
| `<leader>kd` | 拒绝 Claude 提的 diff |

#### 代码补全（minuet-ai 走 Qwen + blink.cmp 弹窗）

| 键 | 作用 |
| --- | --- |
| `<Tab>` | **优先级链**：弹窗选中 → snippet 跳转 → 接受 ghost text → 缩进 |
| `<S-Tab>` | snippet 占位符往回跳 |
| `<CR>` | 选中弹窗当前项 |
| `<C-Space>` | 强制召唤补全弹窗 |
| `<C-n>` / `<C-p>` | 弹窗内上下移动 |
| `<C-l>` | 仅接受 ghost text 一行 |
| `<C-]>` / `<C-h>` | ghost text 切上/下一个候选 |
| `<C-g>` | 关闭 ghost text |
| `<C-e>` | 关闭弹窗 |

### ⚡ Flash 跳转

| 键 | 模式 | 作用 |
| --- | --- | --- |
| `s` | n/o/x | Flash jump |
| `S` | n/o/x | Flash treesitter |
| `r` | o | Remote Flash |
| `R` | o/x | Treesitter Search |
| `<C-s>` | c (命令行) | Toggle Flash 搜索 |

### 🔬 LSP / 诊断（lspsaga）

| 键 | 作用 |
| --- | --- |
| `<space>ld` | 行内诊断 |
| `<space>cd` | 光标处诊断 |
| `<space>o` | 文件 outline |
| `]d` | 下一个诊断 |
| `[d` | 上一个诊断 |

### 📋 剪贴板（osc52，远程 SSH 也能复制）

| 键 | 作用 |
| --- | --- |
| `<leader>c` (n) | `"+y` 复制到系统剪贴板 |
| `<leader>cc` (n) | `"+yy` 整行复制到系统剪贴板 |

### 🔔 通知

| 键 | 作用 |
| --- | --- |
| `<leader>un` | 清除所有 nvim-notify 通知 |

### ⭐ LazyVim 常用默认键（精选）

> 完整列表见 <https://www.lazyvim.org/keymaps>。下表只挑日常高频。

#### 文件 / 项目

| 键 | 作用 |
| --- | --- |
| `<leader><space>` | 在项目根查找文件 |
| `<leader>,` | 切换 buffer |
| `<leader>/` | 项目内 grep（live） |
| `<leader>:` | 命令历史 |
| `<leader>e` | 文件树（neo-tree，root 目录） |
| `<leader>E` | 文件树（cwd） |
| `<leader>fr` | 最近打开的文件 |
| `<leader>fp` | 找插件源码 |

#### 搜索（`<leader>s*`）

| 键 | 作用 |
| --- | --- |
| `<leader>sg` | live grep |
| `<leader>sw` | 搜索光标下的词 |
| `<leader>sb` | 当前 buffer 行搜索 |
| `<leader>sh` | help 搜索 |
| `<leader>sk` | 键位搜索 |
| `<leader>sc` | 命令搜索 |
| `<leader>sn` | 通知历史 |

#### Buffer / 窗口（`<leader>b*` / `<leader>w*`）

| 键 | 作用 |
| --- | --- |
| `<leader>bd` | 关闭 buffer |
| `<leader>bo` | 关闭其他 buffer |
| `<leader>w-` | 横向分屏 |
| `\|` (`<leader>\|`) | 纵向分屏 |
| `<leader>wd` | 关闭当前窗口 |
| `<C-h/j/k/l>` | 在窗口间移动 |
| `<C-Up/Down/Left/Right>` | 调整窗口大小 |
| `<leader>wm` | 最大化当前窗口 |

#### 代码 / LSP（`<leader>c*`）

| 键 | 作用 |
| --- | --- |
| `gd` | 跳到定义 |
| `gr` | 引用列表 |
| `gI` | 实现列表 |
| `gy` | 类型定义 |
| `K` | hover 文档 |
| `<leader>ca` | code action |
| `<leader>cf` | 格式化 |
| `<leader>cr` | rename |
| `<leader>cd` | 行诊断 |
| `<leader>cs` | 文档符号 |
| `]d` / `[d` | 下/上 一个诊断 |

#### Git（`<leader>g*`）

| 键 | 作用 |
| --- | --- |
| `<leader>gg` | LazyGit（root 目录） |
| `<leader>gG` | LazyGit（cwd） |
| `<leader>gb` | git blame line |
| `]h` / `[h` | 下/上 一个 hunk |
| `<leader>ghs` | stage hunk |
| `<leader>ghr` | reset hunk |
| `<leader>ghp` | preview hunk |

#### UI 切换（`<leader>u*`）

| 键 | 作用 |
| --- | --- |
| `<leader>uf` | 切换自动格式化（全局） |
| `<leader>uF` | 切换自动格式化（当前 buffer） |
| `<leader>uw` | 切换软换行 |
| `<leader>uL` | 切换相对行号 |
| `<leader>ul` | 切换行号 |
| `<leader>ud` | 切换诊断 |
| `<leader>uh` | 切换 inlay hints |
| `<leader>us` | 切换拼写 |

#### 其他

| 键 | 作用 |
| --- | --- |
| `<leader>qq` | 退出 nvim |
| `<leader>qs` | 恢复会话 |
| `<leader>qS` | 选择会话 |
| `<leader>L` | 查看 LazyVim 更新日志 |
| `<leader>l` | 打开 Lazy 插件管理器 |

### 🐍 语言专用键位

#### Python（`lang.python` extra）

basedpyright + ruff(format/lint),装好后:

| 键 | 作用 |
| --- | --- |
| `<leader>cv` | 选择 venv（venv-selector） |
| `<leader>co` | organize imports（ruff） |
| `K` | 显示类型/文档 |
| `<leader>ci` | 切换 inlay hint（参数名/类型） |

> 想跑测试/调试需另装 `lang.python` 之外的 extras（如 `dap.core`、`test.core`），当前未启用。

#### C/C++（`lang.clangd` extra）

| 键 | 作用 |
| --- | --- |
| `<leader>ch` | 在源文件 / 头文件之间切换 |
| `<leader>cR` | clangd: refresh symbol index |

#### CMake（`lang.cmake` extra）

| 键 | 作用 |
| --- | --- |
| `:CMakeGenerate` | 生成构建系统 |
| `:CMakeBuild` | 构建 |
| `:CMakeRun` | 运行目标 |
| `:CMakeDebug` | 调试目标（需要 nvim-dap） |

> 这套是 cmake-tools.nvim 提供的命令，没绑默认键位。常用的话可以再加映射。

## 截图 / 演示

> TODO：放几张实际使用的截图。

```text
┌─────────────────────────────────────────────────┐
│  [neo-tree]  │  main.py            │ [Claude]  │
│  └─ src/     │  ─────────────────  │           │
│  └─ tests/   │  def fetch():       │ > 帮我加  │
│              │      pass           │   错误处  │
│              │                     │   理      │
└─────────────────────────────────────────────────┘
```

预期添加内容:
- [ ] 启动画面（dashboard）
- [ ] fff.nvim 文件查找
- [ ] Claude Code 协作 diff
- [ ] minuet ghost text 补全

## 配置一览

### 主要插件

| 类别 | 插件 |
| --- | --- |
| 框架 | [LazyVim](https://github.com/LazyVim/LazyVim) |
| 主题 | [vscode.nvim](https://github.com/Mofiqul/vscode.nvim) |
| 文件树 | [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) |
| 文件查找 | [fff.nvim](https://github.com/dmtrKovalenko/fff.nvim) + [fzf-lua](https://github.com/ibhagwan/fzf-lua) |
| 跳转 | [flash.nvim](https://github.com/folke/flash.nvim) |
| LSP | [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) + [lspsaga](https://github.com/glepnir/lspsaga.nvim) |
| Python LSP | basedpyright |
| 终端 | [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) |
| 补全 | [blink.cmp](https://github.com/saghen/blink.cmp) + [minuet-ai](https://github.com/milanglacier/minuet-ai.nvim) |
| AI Agent | [claudecode.nvim](https://github.com/coder/claudecode.nvim) |
| Git | [vim-fugitive](https://github.com/tpope/vim-fugitive) + gitsigns |
| 剪贴板 | [nvim-osc52](https://github.com/ojroques/nvim-osc52) |
| 通知 | [nvim-notify](https://github.com/rcarriga/nvim-notify) + [noice.nvim](https://github.com/folke/noice.nvim) |

### 环境变量（`~/.env` 自动加载）

启动时 `init.lua` 会读取 `~/.env`，将 `KEY=value` 形式注入 `vim.env`，支持 `export` 前缀和单/双引号。

| 变量 | 用途 |
| --- | --- |
| `ANTHROPIC_BASE_URL` | Claude Code CLI 端点（IdeaLab） |
| `ANTHROPIC_AUTH_TOKEN` | Claude Code CLI 认证 token |
| `ANTHROPIC_MODEL` | Claude Code 默认模型 |
| `QWEN_API_KEY` | minuet-ai 用 Qwen 做补全 |
| `QWEN_BASE_URL` | OpenAI 兼容端点 |
| `QWEN_MODEL` | Qwen 模型名 |

### 已禁用（保留代码）

| 文件 | 状态 | 原因 |
| --- | --- | --- |
| `plugins/avante.lua` | `if true then return {} end` | 被 claudecode.nvim 取代 |
| `plugins/copilot.lua` | `if true then return {} end` | 被 minuet-ai 取代 |
| `plugins/telescope.lua` | `if true then return {} end` | LazyVim 默认 picker 改为 fzf |

## 目录结构

```
~/.config/nvim/                    # 软链接 → nvim-config/
~/.config/nvim-config/
├── init.lua                       # 入口：加载 ~/.env、bootstrap lazy
├── lazyvim.json                   # LazyVim extras 选择
├── lazy-lock.json                 # 插件版本锁
├── lua/
│   ├── config/
│   │   ├── lazy.lua               # lazy.nvim 启动配置
│   │   ├── options.lua            # vim.opt / vim.g 全局选项
│   │   ├── keymaps.lua            # 自定义键位
│   │   └── autocmds.lua           # 自动命令（当前为空）
│   └── plugins/                   # 每个插件一个文件
└── ftplugin/
    └── javascript.vim             # JS 文件类型特化设置
```
