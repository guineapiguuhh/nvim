---@type LazyPluginSpec
return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	opts = {
		cmdline = {
			enabled = true,
			view = "cmdline_popup",
			opts = {},
			format = {
				cmdline = { title = " Command ", pattern = "^:", icon = " ", lang = "vim" },
				search_down = { title = " Search ", kind = "search", pattern = "^/", icon = " ", lang = "regex" },
				search_up = { title = " Search ", kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
				filter = { title = " Bash ", pattern = "^:%s*!", icon = "$", lang = "bash" },
				help = { title = " Help ", pattern = "^:%s*he?l?p?%s+", icon = "" },
				input = { title = " Input ", view = "cmdline_input", icon = "󰥻 " },
			},
		},

		views = {
			cmdline_popup = {
				border = {
					style = "rounded",
					padding = { 0, 1 },
				},
				filter_options = {},
				win_options = {
					winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
				},
			},
		},

		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},

		notify = {
			enabled = true,
			view = "notify",
		},
	},
}
