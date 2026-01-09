return {
  cmd = { 'vue-language-server', '--stdio' },
  filetypes = { 'vue' },
  root_markers = { 'package.json' },
  init_options = {
    typescript = {
      tsdk = '',
    },
  },
  on_init = function(client)
    -- 自动检测 tsdk 路径
    local util = vim.fs
    local root = client.config.root_dir
    if root then
      local node_modules_ts = util.joinpath(root, 'node_modules', 'typescript', 'lib')
      if vim.uv.fs_stat(node_modules_ts) then
        client.config.init_options.typescript.tsdk = node_modules_ts
      end
    end
  end,
  before_init = function(_, config)
    -- 让 vue_ls 使用内置 TypeScript 支持，不依赖外部 tsserver
    if config.init_options and config.init_options.typescript and config.init_options.typescript.tsdk == '' then
      -- 尝试全局 typescript
      local global_ts = vim.fn.exepath 'tsserver'
      if global_ts ~= '' then
        config.init_options.typescript.tsdk = vim.fn.fnamemodify(global_ts, ':h')
      end
    end
  end,
}
