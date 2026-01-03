return {
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = false,
		config = function()
			vim.keymap.set("n", "\\", "<Cmd>:Oil<CR>")
			require("oil").setup({})
		end,
	},
}
