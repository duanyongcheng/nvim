# 快捷键配置

> Leader 键为 `<Space>`

## 基础操作

> 配置文件: `lua/custom/keymaps.lua`

| 快捷键 | 模式 | 功能 |
|--------|------|------|
| `jk` | Insert | 退出插入模式 |
| `<Esc>` | Normal | 清除搜索高亮 |
| `U` | Normal | 快速上移 10 行 |
| `D` | Normal | 快速下移 10 行 |
| `[` | Normal | 跳转到上一个光标位置 (`<C-o>`) |
| `]` | Normal | 跳转到下一个光标位置 (`<C-i>`) |
| `<Leader>qq` | Normal | 保存并退出全部 |

## 窗口管理

> 配置文件: `lua/custom/keymaps.lua`

| 快捷键 | 功能 |
|--------|------|
| `\` | 水平分割窗口 |
| `\|` | 垂直分割窗口 |
| `Ctrl+h` | 移动到左边窗口 |
| `Ctrl+l` | 移动到右边窗口 |
| `Ctrl+j` | 移动到下边窗口 |
| `Ctrl+k` | 移动到上边窗口 |

## Buffer 管理

> 配置文件: `lua/custom/plugins/barbar.lua`, `lua/custom/plugins/snacks.lua`, `lua/custom/keymaps.lua`

| 快捷键 | 功能 |
|--------|------|
| `Tab` | 下一个 Buffer |
| `Shift+Tab` | 上一个 Buffer |
| `<Leader>1` - `<Leader>5` | 跳转到指定 Buffer |
| `<Leader>bc` | 关闭当前 Buffer |
| `<Leader>bC` | 关闭其他所有 Buffer |
| `<Leader>bo` | 关闭非当前/固定 Buffer |
| `<Leader>bp` | 固定/取消固定 Buffer |
| `<Leader>p` | Buffer 选择器 (BufferPick) |

## 文件搜索 (Snacks.picker)

> 配置文件: `lua/custom/plugins/snacks.lua`

| 快捷键 | 功能 |
|--------|------|
| `<Leader>ff` | 智能查找文件 |
| `<Leader>fo` | 查找最近打开的文件 |
| `<Leader>fw` | 全局内容搜索 (grep) |
| `<Leader>fh` | 搜索帮助文档 |
| `<Leader>fk` | 搜索快捷键 |
| `<Leader>e` | 查找已打开的 Buffer |
| `<Leader>fm` | 搜索标记 (marks) |
| `<Leader>fn` | 搜索通知历史 |
| `<Leader>fs` | 搜索工作区符号 |
| `<Leader>ls` | 当前文件符号/Treesitter |
| `<Leader>fi` | 搜索图标 |
| `<Leader>fd` | 搜索诊断信息 |
| `<Leader>fH` | 搜索高亮组 |
| `<Leader>fc` | 搜索 Neovim 配置文件 |
| `<Leader>f/` | 搜索历史 |
| `<Leader>fj` | 搜索跳转列表 |
| `<Leader>ft` | 搜索 TODO 注释 |
| `<Leader>fl` | 选择 Picker 布局 |

## LSP 功能

> 配置文件: `lua/custom/lsp.lua`

| 快捷键 | 功能 |
|--------|------|
| `gd` | 跳转到定义 |
| `gD` | 跳转到声明 |
| `gr` | 查找引用 |
| `<Leader>ca` | 代码操作 |
| `<Leader>cr` | 重命名符号 |
| `<Leader>cd` | 显示当前行诊断 |
| `<Leader>td` | 切换诊断显示 |
| `<Leader>th` | 切换 Inlay Hints |

## Git 操作

### Lazygit & Snacks

> 配置文件: `lua/custom/plugins/snacks.lua`

| 快捷键 | 功能 |
|--------|------|
| `<Leader>gg` | 打开 Lazygit |
| `<Leader>gb` | Git blame 当前行 |

### Gitsigns (Hunk 操作)

> 配置文件: `lua/custom/plugins/gitsigns.lua`

| 快捷键 | 模式 | 功能 |
|--------|------|------|
| `]c` | Normal | 跳转到下一个 Git 变更 |
| `[c` | Normal | 跳转到上一个 Git 变更 |
| `<Leader>hs` | Normal/Visual | 暂存 hunk |
| `<Leader>hr` | Normal/Visual | 重置 hunk |
| `<Leader>hS` | Normal | 暂存整个 buffer |
| `<Leader>hu` | Normal | 撤销暂存 hunk |
| `<Leader>hR` | Normal | 重置整个 buffer |
| `<Leader>hp` | Normal | 预览 hunk |
| `<Leader>hb` | Normal | Blame 当前行 |
| `<Leader>hd` | Normal | Diff 对比 index |
| `<Leader>hD` | Normal | Diff 对比上次提交 |
| `<Leader>tb` | Normal | 切换行内 blame 显示 |
| `<Leader>tD` | Normal | 切换删除行预览 |

## 快速跳转 (Flash)

> 配置文件: `lua/custom/plugins/flash.lua`

| 快捷键 | 模式 | 功能 |
|--------|------|------|
| `s` | Normal/Visual/Operator | Flash 跳转 |
| `S` | Normal/Visual/Operator | Flash Treesitter 选择 |
| `r` | Operator | Remote Flash |
| `R` | Operator/Visual | Treesitter 搜索 |
| `Ctrl+s` | Command | 切换 Flash 搜索模式 |

## 文件浏览器 (Oil)

> 配置文件: `lua/custom/config/oil.lua`

在 Oil 缓冲区中:

| 快捷键 | 功能 |
|--------|------|
| `-` / `<Leader>e` | 关闭 Oil |
| `<BS>` | 返回上级目录 |
| `<Enter>` | 打开文件/目录 |
| `\` | 水平分割打开 |
| `\|` | 垂直分割打开 |
| `<C-r>` | 刷新 |
| `zh` | 显示/隐藏隐藏文件 |
| `gd` | 切换详细信息视图 |
| `<Leader>y` | 复制文件路径 |

## 文本编辑 (Mini.surround)

> 配置文件: `lua/custom/plugins/mini.lua`

| 快捷键 | 功能 |
|--------|------|
| `gsa` | 添加包围字符 |
| `gsd` | 删除包围字符 |
| `gsr` | 替换包围字符 |
| `gsf` | 查找包围字符 (向右) |
| `gsF` | 查找包围字符 (向左) |
| `gsh` | 高亮包围字符 |
| `gsn` | 更新搜索行数 |

## 终端

> 配置文件: `lua/custom/plugins/snacks.lua`, `lua/custom/keymaps.lua`

| 快捷键 | 模式 | 功能 |
|--------|------|------|
| `Ctrl+\` | Normal/Terminal | 切换浮动终端 |
| `<Esc><Esc>` | Terminal | 退出终端模式 |

## Markdown

> 配置文件: `lua/custom/keymaps.lua`

| 快捷键 | 功能 |
|--------|------|
| `<Leader>mp` | 开始 Markdown 预览 |
| `<Leader>ms` | 停止 Markdown 预览 |

## 其他

> 配置文件: `lua/custom/plugins/snacks.lua`, `lua/custom/keymaps.lua`

| 快捷键 | 功能 |
|--------|------|
| `<Leader>n` | 查看通知历史 |
| `<Leader>lm` | 打开 Mason (LSP 管理器) |
| `<Leader>mq` | 打开诊断 Quickfix 列表 |

## 配置文件索引

| 文件路径 | 包含的快捷键 |
|----------|-------------|
| `lua/custom/keymaps.lua` | 基础操作、窗口管理、终端、Markdown |
| `lua/custom/lsp.lua` | LSP 功能 |
| `lua/custom/plugins/snacks.lua` | 文件搜索、Buffer 删除、Git、终端、通知 |
| `lua/custom/plugins/barbar.lua` | Buffer 切换、跳转、固定 |
| `lua/custom/plugins/gitsigns.lua` | Git hunk 操作 |
| `lua/custom/plugins/flash.lua` | 快速跳转 |
| `lua/custom/plugins/mini.lua` | 文本包围操作 |
| `lua/custom/config/oil.lua` | 文件浏览器 |
