---@type LazyPluginSpec
return {
	"nvim-mini/mini.basics",
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
	end,
}
