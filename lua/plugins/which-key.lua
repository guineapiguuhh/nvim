---@type LazyPluginSpec
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "helix",
		triggers = {
			{ "<auto>", mode = "nixsotc" },
			{ "s", mode = { "n", "v" } },
		},
	},
}
