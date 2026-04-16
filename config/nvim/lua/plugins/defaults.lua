return {
	{
		"folke/snacks.nvim",
		opts = {
			indent = {
				enabled = false,
			},
		},
		config = function(_, opts)
			require("snacks").setup(opts)

			-- disable tab/whitespace rendering
			vim.opt.list = false
		end,
	},
}