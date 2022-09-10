keymap = vim.keymap.set
function randp()
  print("real lua function")
end

keymap('n', '<Space>', '')
vim.g.mapleader = ' '

keymap('n', 'D-d', randp)

keymap('n', '<Leader>f', _find_files)
keymap('n', '<Leader>o', '<cmd> Telescope oldfiles <cr>')
keymap('n', '<Leader>g', '<cmd> Telescope live_grep <cr>')
keymap('n', '<Leader>b', '<cmd> Telescope buffers <cr>')

-- nvim-tree bindings
keymap('n', '<Leader>n', '<cmd> NvimTreeFocus <cr>')
keymap('n', '<Leader>m', '<cmd> NvimTreeToggle <cr>')

