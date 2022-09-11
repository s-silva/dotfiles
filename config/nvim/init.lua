-- install packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

require('plugins')
require('plugins.treesitter')
require('plugins.lualine')
require('plugins.nvim-tree')
require('plugins.neoscroll')
require('plugins.gitsigns')
require('plugins.telescope')
require('plugins.hop')
require('plugins.comment')
require('plugins.toggle-term')
require('plugins.lazygit')
require('plugins.luasnip')
require('plugins.lsp.config')
require('plugins.lsp.cmp')
require('plugins.lsp.null-ls')
require('plugins.lsp.toggle-diagnostics')

require('theme')
require('general')
require('commands')
require('functions')
require('bindings')