keymap = vim.keymap.set

keymap('n', '<Space>', '')
vim.g.mapleader = ' '

keymap('n', '<Leader>f', _find_files)
keymap('n', '<Leader>o', '<cmd> Telescope oldfiles <cr>')
keymap('n', '<Leader>g', '<cmd> Telescope live_grep <cr>')
keymap('n', '<Leader>b', '<cmd> Telescope buffers <cr>')

-- nvim-tree bindings
keymap('n', '<Leader>n', '<cmd> NvimTreeFocus <cr>')
keymap('n', '<Leader>m', '<cmd> NvimTreeToggle <cr>')

-- lsp bindings
keymap('n', '<Leader>lf', ':lua vim.lsp.buf.formatting() <cr>')
keymap('n', '<Leader>lF', ':lua vim.lsp.buf.range_formatting() <cr>')

-- lsp diagnostics
keymap('n', '<Leader>dd', '<cmd> ToggleDiag <cr>')
keymap('n', '<Leader>du', '<Plug>(toggle-lsp-diag-underline)')
keymap('n', '<Leader>ds', '<Plug>(toggle-lsp-diag-signs)')
keymap('n', '<Leader>dv', '<Plug>(toggle-lsp-diag-vtext)')
keymap('n', '<Leader>di', '<Plug>(toggle-lsp-diag-update_in_insert)')

-- hop bindings
keymap('n', '<Leader>hw', '<cmd> HopWord <cr>')
keymap('n', '<Leader>hj', '<cmd> HopLineStart <cr>')

-- other bindings
keymap('n', '<Leader>gg', '<cmd> LazyGit <cr>')