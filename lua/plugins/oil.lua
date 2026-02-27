---@type LazyPluginSpec
return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	lazy = false,
	config = function()
		require("oil").setup({
			skip_confirm_for_simple_edits = true,

			win_options = {
				signcolumn = "yes:2",
			},
			view_options = {
				show_hidden = true,
				is_always_hidden = function(name, _)
					return name == ".." or name == ".git"
				end,
			},
			keymaps = {
				["g?"] = { "actions.show_help", mode = "n" },
				["g."] = { "actions.toggle_hidden", mode = "n" },
				["w"] = { "actions.select", mode = "n" },
				["<C-l>"] = "actions.refresh",
			},
			use_default_keymaps = false,
		})
	end,
}
