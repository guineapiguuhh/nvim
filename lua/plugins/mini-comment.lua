---@type LazyPluginSpec
return {
	"nvim-mini/mini.comment",
	version = "*",
	config = function()
		require("mini.comment").setup()
	end,
}
