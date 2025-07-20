# Bary's Neovim Configuration

## 简介

这是一个基于 [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) 的个人 Neovim 配置，经过高度定制和模块化。

**特点:**
* 🚀 快速启动和响应
* 🎨 现代化界面设计 
* 📁 模块化插件管理
* 🛠️ 完善的开发环境

## 配置结构

```
~/.config/nvim/
├── init.lua                    # 主配置文件
├── lua/custom/
│   ├── keymaps.lua            # 键位映射
│   ├── options.lua            # 编辑器选项
│   ├── autocmds.lua           # 自动命令
│   ├── lsp.lua                # LSP 配置
│   ├── config/                # 插件配置目录
│   │   ├── heirline/          # 状态栏配置
│   │   ├── oil.lua            # 文件管理器配置
│   │   └── snacks.lua         # Snacks 插件配置
│   ├── plugins/               # 插件定义
│   │   ├── auto-session.lua   # 会话管理
│   │   ├── barbar.lua         # 标签页
│   │   ├── blink.lua          # 自动补全
│   │   ├── catppuccin.lua     # 主题
│   │   ├── debug.lua          # 调试工具
│   │   ├── flash.lua          # 快速跳转
│   │   ├── format.lua         # 代码格式化
│   │   ├── gitsigns.lua       # Git 集成
│   │   ├── heirline.lua       # 状态栏
│   │   ├── lint.lua           # 代码检查
│   │   ├── markdown-preview.lua # Markdown 预览
│   │   ├── mason.lua          # LSP 管理器
│   │   ├── oil.lua            # 文件浏览器
│   │   ├── telescope.lua      # 模糊查找
│   │   ├── toggleterm.lua     # 终端
│   │   └── treesitter.lua     # 语法高亮
│   └── ui/
│       └── icons.lua          # 图标配置
└── lsp/                       # LSP 服务器配置
    ├── jsonls.lua
    ├── lua_ls.lua
    ├── rust.lua
    ├── ts_ls.lua
    └── vue_ls.lua
```

## 主要插件

### 🎨 界面增强
- **Catppuccin** - 精美的配色主题，支持系统自动切换
- **Heirline** - 自定义状态栏和标签栏
- **Barbar** - 现代化标签页管理
- **Oil** - 文件管理器，类似编辑器的文件操作

### 🛠️ 开发工具
- **Blink.cmp** - 高性能自动补全引擎
- **Mason** - LSP 服务器管理
- **Treesitter** - 语法高亮和代码解析
- **nvim-lint** - 代码质量检查
- **conform.nvim** - 代码格式化

### 🔍 导航与搜索
- **Telescope** - 强大的模糊查找工具
- **Flash** - 快速跳转插件
- **Gitsigns** - Git 变更显示

### 📝 编辑增强
- **Auto-session** - 自动会话管理
- **nvim-autopairs** - 自动括号配对
- **Markdown Preview** - Markdown 实时预览
- **Which-key** - 键位提示

### 🔧 终端与调试
- **ToggleTerm** - 终端管理
- **nvim-dap** - 调试适配器协议支持

## 安装

### 前置要求

- Neovim >= 0.9.0
- Git
- Node.js (用于部分 LSP 和工具)
- Ripgrep (`rg`)
- fd-find
- 一个 [Nerd Font](https://www.nerdfonts.com/) 字体

macOS 安装依赖:
```bash
brew install neovim git node ripgrep fd
```

### 安装配置

1. 备份现有配置:
```bash
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
```

2. 克隆此配置:
```bash
git clone <your-fork-url> ~/.config/nvim
```

3. 启动 Neovim:
```bash
nvim
```

Lazy.nvim 会自动安装所有插件。首次启动可能需要几分钟时间。

## 特色功能

### 🎯 主题切换
- 配置跟随系统自动切换明暗主题
- 支持手动切换主题

### 📁 文件管理  
- 使用 Oil 插件提供类似编辑器的文件管理体验
- 支持直接在缓冲区中编辑文件系统

### 🔍 强大搜索
- Telescope 提供文件、符号、命令等全方位搜索
- Flash 插件支持快速跳转到任意位置

### 🚀 会话管理
- 自动保存和恢复工作会话
- 智能检测项目根目录

### 📖 Markdown 支持
- 实时预览功能 (`:MarkdownPreview`)
- 自动安装 Node.js 依赖

## 键位映射

详细的键位映射请查看 `lua/custom/keymaps.lua` 文件。

主要快捷键:
- `<Space>` - Leader 键
- `<Leader>ff` - 查找文件
- `<Leader>fg` - 全局搜索
- `<Leader>e` - 打开文件管理器
- `<Leader>t` - 打开终端
- `<Leader>mp` - Markdown 预览
- `<Leader>ms` - 停止 Markdown 预览

## 自定义

### 添加插件
在 `lua/custom/plugins/` 目录下创建新的 `.lua` 文件，参考现有插件的格式。

### 修改主题
编辑 `lua/custom/plugins/catppuccin.lua` 文件自定义配色方案。

### LSP 配置
在 `lsp/` 目录下添加或修改特定语言的 LSP 配置。

## 故障排除

### Markdown 预览不工作
确保已安装依赖:
```bash
cd ~/.local/share/nvim/lazy/markdown-preview.nvim/app
yarn install
```

### LSP 服务器问题
使用 `:Mason` 命令管理 LSP 服务器的安装和更新。

### 性能问题
检查 `:Lazy` 中的插件状态，确保所有插件正确加载。

## 致谢

感谢以下项目的贡献:
- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) - 配置基础
- [lazy.nvim](https://github.com/folke/lazy.nvim) - 插件管理器
- 所有插件作者的杰出工作

## 许可证

MIT License - 详见 LICENSE.md 文件。
