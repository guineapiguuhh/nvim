---@type LazyPluginSpec
return {
	"nvim-mini/mini.cursorword",
	version = "*",
	config = function()
		require("mini.cursorword").setup({ delay = 1000 })
	end,
}
