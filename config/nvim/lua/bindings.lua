keymap = vim.keymap.set

keymap('n', '<Space>', '')
vim.g.mapleader = ' '

keymap('n', '<Leader>f', _find_files)
keymap('n', '<Leader>F', '<cmd> Telescope find_files <cr>')
keymap('n', '<Leader>o', '<cmd> Telescope oldfiles <cr>')
keymap('n', '<Leader>lg', '<cmd> Telescope live_grep <cr>')
keymap('n', '<Leader>b', '<cmd> Telescope buffers <cr>')
keymap('n', '<Leader>N', '<cmd> Telescope file_browser <cr>')
keymap('n', '<Leader>n', '<cmd> Telescope file_browser path=%:p:h select_buffer=true <cr>')

-- lsp bindings
keymap('n', '<Leader>lf', ':lua vim.lsp.buf.formatting() <cr>')
keymap('n', '<Leader>lF', ':lua vim.lsp.buf.range_formatting() <cr>')
keymap("n", "<Leader>ld",  ':lua vim.lsp.buf.definition() <cr>')
keymap("n", "<Leader>ll",  ':lua vim.lsp.buf.hover() <cr>')
keymap("n", "<Leader>li",  ':lua vim.lsp.buf.implementation() <cr>')
keymap("n", "<Leader>ls",  ':lua vim.lsp.buf.signature_help() <cr>')
keymap("n", "<Leader>ltd", ':lua vim.lsp.buf.type_definition() <cr>')
keymap("n", "<Leader>lr",  ':lua vim.lsp.buf.references() <cr>')
keymap("n", "<Leader>lsd", ':lua vim.lsp.buf.document_symbol() <cr>')
keymap("n", "<Leader>lsw", ':lua vim.lsp.buf.workspace_symbol() <cr>')

-- lsp diagnostics
keymap('n', '<Leader>dd', '<cmd> ToggleDiag <cr>')
keymap('n', '<Leader>du', '<Plug>(toggle-lsp-diag-underline)')
keymap('n', '<Leader>ds', '<Plug>(toggle-lsp-diag-signs)')
keymap('n', '<Leader>dv', '<Plug>(toggle-lsp-diag-vtext)')
keymap('n', '<Leader>di', '<Plug>(toggle-lsp-diag-update_in_insert)')

-- hop bindings
keymap({ 'n', 'v' }, '<Leader><space>', '<cmd> HopWord <cr>')
keymap({ 'n', 'v' }, '<Leader>hw', '<cmd> HopWord <cr>')
keymap({ 'n', 'v' }, '<Leader>hj', '<cmd> HopLineStart <cr>')

-- neogen
keymap('n', '<Leader>c', ':lua require("neogen").generate()<CR>', { silent = true })

-- other bindings
keymap('n', '<Leader>gg', '<cmd> LazyGit <cr>')
keymap('i', '<C-f>', '<Plug>luasnip-next-choice')
keymap('s', '<C-f>', '<Plug>luasnip-next-choice')

-- zen/twilight
keymap('n', '<Leader>z', ':lua require("zen-mode").toggle()<CR>', { silent = true })
keymap('n', '<Leader>t', ':lua require("twilight").toggle()<CR>', { silent = true })

-- tree-climber
local tcopts = {noremap = true, silent = true}
keymap({'n', 'v', 'o'}, '<C-h>', require('tree-climber').goto_parent, tcopts)
keymap({'n', 'v', 'o'}, '<C-l>', require('tree-climber').goto_child, tcopts)
keymap({'n', 'v', 'o'}, '<C-j>', require('tree-climber').goto_next, tcopts)
keymap({'n', 'v', 'o'}, '<C-k>', require('tree-climber').goto_prev, tcopts)
keymap({'n', 'v', 'o'}, '<A-Left>', require('tree-climber').goto_parent, tcopts)
keymap({'n', 'v', 'o'}, '<A-Right>', require('tree-climber').goto_child, tcopts)
keymap({'n', 'v', 'o'}, '<A-Down>', require('tree-climber').goto_next, tcopts)
keymap({'n', 'v', 'o'}, '<A-Up>', require('tree-climber').goto_prev, tcopts)
keymap({'v', 'o'}, 'in', require('tree-climber').select_node, tcopts)

-- user
keymap('n', '<Leader>r', compile_command, { silent = true })
keymap('n', '<Leader>a', switch_source_header)
