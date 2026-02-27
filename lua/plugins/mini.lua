---@type LazyPluginSpec
return {
	"nvim-mini/mini.nvim",
	version = "*",
	config = function()
		require("mini.basics").setup({
			options = {
				basic = true,
				extra_ui = false,
			},
			mappings = {
				basic = false,
			},
		})

		require("mini.statusline").setup()

		require("mini.surround").setup()
		require("mini.pairs").setup()
		require("mini.cursorword").setup({ delay = 1000 })
		require("mini.comment").setup()
		require("mini.icons").setup()
	end,
}
