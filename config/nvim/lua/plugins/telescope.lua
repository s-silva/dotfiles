local actions = require('telescope.actions')

require('telescope').setup({
	defaults = {
		file_sorter = require('telescope.sorters').get_fzy_sorter,
		prompt_prefix = '  ',
		color_devicons = true,

		file_previewer = require('telescope.previewers').vim_buffer_cat.new,
		grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
		qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

		mappings = {
			i = {
				['<C-x>'] = false,
				['<C-q>'] = actions.send_to_qflist,
			},
		},
	},
	extensions = {
		fzy = {
	   fuzzy = true,
			override_generic_sorter = false,
			override_file_sorter = true,
	   case_mode = 'smart_case',
		},
    file_browser = {
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = false,
      grouped = true,
	    sorting_strategy = 'ascending',
      respect_gitignore = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
	},
})

require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
require('telescope').load_extension('project')