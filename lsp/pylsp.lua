---@type vim.lsp.Config
return {
  cmd = { 'pylsp' },
  filetypes = { 'python' },
  root_markers = {
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'main.py',
    'Pipfile',
    '.git',
  },
  settings = {
    pylsp = {
      plugins = {
        -- Code completion
        jedi_completion = { enabled = true },
        jedi_hover = { enabled = true },
        jedi_references = { enabled = true },
        jedi_signature_help = { enabled = true },
        jedi_symbols = { enabled = true, all_scopes = true },

        -- Linting
        flake8 = { enabled = false },
        mccabe = { enabled = false },
        pycodestyle = { enabled = false },
        pydocstyle = { enabled = false },
        pyflakes = { enabled = false },
        pylint = { enabled = false },

        -- Formatting (disable if using external formatter)
        autopep8 = { enabled = false },
        yapf = { enabled = false },

        -- Import sorting
        isort = { enabled = true },

        -- Other features
        rope_completion = { enabled = true },
        rope_autoimport = { enabled = true },
      },
    },
  },
}
