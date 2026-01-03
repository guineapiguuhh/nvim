return {
	{
		"numToStr/Comment.nvim",
		opts = {},
		config = function()
			vim.keymap.set("v", ";", ":norm gcc<CR>", { desc = "Toggle comment" })
			vim.keymap.set("n", ";", ":norm gcc<CR>", { desc = "Toggle comment" })
			require("Comment").setup({})
		end,
	},
}
