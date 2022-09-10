-- Material Theme config
vim.g.material_style = 'deep ocean'

require('material').setup({
  lualine_style = 'stealth',
	contrast = {
		sidebars = true,
		floating_windows = true,
	},
	italics = {
		keywords = true,
		functions = true,
	},
	contrast_filetypes = {
		'terminal',
		'packer',
		'qf',
	},
	disable = {
		borders = false,
		eob_lines = true
	}
})

vim.cmd 'colorscheme material'