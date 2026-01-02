return {
	{
		"numToStr/Comment.nvim",
		opts = {},
		config = function()
			vim.keymap.set("v", ";", ":norm gbc<CR>", { desc = "Toggle comment (block)" })
			vim.keymap.set("n", ";", ":norm gcc<CR>", { desc = "Toggle comment" })
			require("Comment").setup({})
		end,
	},
}
