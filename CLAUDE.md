# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a highly customized Neovim configuration based on kickstart.nvim, featuring a modular plugin architecture with modern development tools and theming. The configuration follows a clean separation between core functionality, plugin definitions, and individual plugin configurations.

## Architecture

### Core Structure
- `init.lua` - Main entry point that loads custom modules and initializes Lazy.nvim
- `lua/custom/` - All custom configuration modules
  - `keymaps.lua` - Global keybindings and shortcuts
  - `options.lua` - Neovim editor settings and options
  - `autocmds.lua` - Auto-commands for various events
  - `lsp.lua` - LSP configuration, keymaps, and diagnostic settings
- `lsp/` - Individual LSP server configurations (lua_ls, rust, vue_ls, ts_ls, jsonls, tombi, pylsp)

### Plugin Architecture
- `lua/custom/plugins/` - Plugin specifications using Lazy.nvim format
- `lua/custom/config/` - Complex plugin configurations split into separate modules
- Plugin loading follows Lazy.nvim's `{ import = 'custom.plugins' }` pattern

### Key Components
- **Theme System**: Catppuccin theme with automatic light/dark switching based on system settings
- **Status Line**: Custom Heirline configuration with modular components
- **LSP Integration**: Modern LSP setup with Snacks picker integration for definitions/references
- **File Management**: Oil.nvim for buffer-based file editing
- **Session Management**: Auto-session with smart project detection
- **Completion**: Blink.cmp for high-performance autocompletion

## Development Commands

### Code Formatting
```bash
# Format Lua code using StyLua
stylua .
```

### Plugin Management
- `:Lazy` - Open plugin manager interface
- `:Lazy update` - Update all plugins
- `:Lazy sync` - Sync plugin state with lock file

### LSP Management
- `:Mason` - Open LSP server manager
- `:LspInfo` - Show LSP client information
- `:LspRestart` - Restart LSP servers

### Health Checks
- `:checkhealth` - Run Neovim health checks
- `:checkhealth lazy` - Check plugin manager health
- `:checkhealth mason` - Check LSP server installations

## Key Features

### LSP Configuration
- LSP servers are enabled via `vim.lsp.enable` calls in `lua/custom/lsp.lua`
- Individual server configurations in `lsp/` directory
- Custom keymaps auto-configured on LSP attach
- Snacks picker integration for definitions and references
- Folding support via LSP foldingRange
- Inlay hints and document highlighting

### Plugin System
- Modular plugin definitions in `lua/custom/plugins/`
- Complex configurations split into `lua/custom/config/`
- Lazy loading optimizations throughout
- Lock file (`lazy-lock.json`) ensures reproducible plugin versions

### Theming
- Automatic theme switching based on system appearance
- Catppuccin theme integration with custom palette
- Heirline statusline with custom components and theming

## File Patterns

### Adding New Plugins
1. Create new `.lua` file in `lua/custom/plugins/`
2. Return plugin specification table with Lazy.nvim format
3. Complex configs go in `lua/custom/config/` and are required from plugin spec

### Adding LSP Servers
1. Add `vim.lsp.enable 'server_name'` to `lua/custom/lsp.lua`
2. Create `lsp/server_name.lua` with server-specific configuration
3. Install server via `:Mason` or ensure it's available in PATH

### Custom Keymaps
- Global keymaps in `lua/custom/keymaps.lua`
- LSP-specific keymaps auto-configured in LspAttach autocmd
- Plugin-specific keymaps defined within plugin configurations

## Code Style

### Lua Formatting (StyLua)
- 2-space indentation
- Single quotes preferred
- No call parentheses where possible
- 160 character line width
- Unix line endings