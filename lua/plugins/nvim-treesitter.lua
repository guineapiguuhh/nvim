return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local pattern = {}
			for key, value in pairs(require("config.languages")) do
				if value.use_treesitter then
					table.insert(pattern, key)
				end
			end
			vim.api.nvim_create_autocmd("FileType", {
				pattern = pattern,
				callback = function()
					vim.treesitter.start()
				end,
			})
		end,
	},
}
