---@type LazyPluginSpec
return {
	"nvim-mini/mini.surround",
	version = "*",
	config = function()
		require("mini.surround").setup()
	end,
}
