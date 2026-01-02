return {
	{
		"goolord/alpha-nvim",
		dependecies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local dashboard = require("alpha.themes.dashboard")
			require("alpha").setup(dashboard.config)
		end,
	},
}
