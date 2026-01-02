return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local treesitter = require("nvim-treesitter")
			require("nvim-treesitter.install").compilers = { "zig" }
			treesitter.install({ "gleam" })

			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "gleam" },
				callback = function()
					vim.treesitter.start()
				end,
			})
		end,
	},
}
