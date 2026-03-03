---@type LazyPluginSpec
return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-mini/mini.icons" },
	config = function()
		local theme = require("alpha.themes.dashboard")
		require("alpha").setup(theme.config)
	end,
}
