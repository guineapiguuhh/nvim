---@type LazyPluginSpec
return {
	"refractalize/oil-git-status.nvim",

	dependencies = {
		"stevearc/oil.nvim",
	},

	config = function()
		require("oil-git-status").setup({
			show_ignored = true,
			symbols = {
				index = {
					["!"] = "",
					["?"] = "",
					["A"] = "",
					["C"] = "",
					["D"] = "",
					["M"] = "",
					["R"] = "",
					["T"] = "󰉺",
					["U"] = "",
					[" "] = " ",
				},
				working_tree = {
					["!"] = "",
					["?"] = "",
					["A"] = "",
					["C"] = "",
					["D"] = "",
					["M"] = "",
					["R"] = "",
					["T"] = "󰉺",
					["U"] = "",
					[" "] = " ",
				},
			},
		})
	end,
}
