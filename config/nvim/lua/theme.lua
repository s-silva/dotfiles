-- Theme config
-- require('nightfox').setup({
--   options = {
--     transparent = false,    -- Disable setting background
--     terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
--     dim_inactive = true,   -- Non focused panes set to alternative background
--     styles = {              -- Style to be applied to different syntax groups
--       comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
--       conditionals = "NONE",
--       constants = "NONE",
--       functions = "NONE",
--       keywords = "NONE",
--       numbers = "NONE",
--       operators = "NONE",
--       strings = "NONE",
--       types = "NONE",
--       variables = "NONE",
--     },
--     inverse = {             -- Inverse highlight for different types
--       match_paren = false,
--       visual = false,
--       search = false,
--     },
--     modules = {
--       hop = false
--     }
--   },
--   palettes = {},
--   specs = {},
--   groups = {},
-- })

-- setup must be called before loading
vim.cmd("let g:gruvbox_material_background = 'hard'")
vim.cmd("colorscheme gruvbox-material")
vim.opt.fillchars = {eob = ' '}

vim.cmd([[
  hi NeoTreeNormal guibg=NONE
  hi NeoTreeEndOfBuffer guibg=NONE
]])