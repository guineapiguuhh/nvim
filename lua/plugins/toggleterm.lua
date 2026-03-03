---@type LazyPluginSpec
return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		direction = "float",
		open_mapping = "<C-t>",

		float_opts = {
			border = "rounded",
		},
	},
}
