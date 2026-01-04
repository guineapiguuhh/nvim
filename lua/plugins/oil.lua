return {
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		lazy = false,
		config = function()
			require("oil").setup({})
		end,
	},
}
