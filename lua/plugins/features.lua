return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		config = function()
			require("neo-tree").setup({})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
	},
	{
		"saghen/blink.cmp",

		version = "1.*",
		opts = {
			keymap = { preset = "default" },

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = { documentation = { auto_show = false } },
			sources = { default = { "lsp", "path", "snippets", "buffer" } },
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
	{
		"mfussenegger/nvim-lint",
		config = function()
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
					require("lint").try_lint("cspell")
				end,
			})
			require("lint").linters.zlint = {
				cmd = "zlint",
				stdin = true,
				append_fname = true,
				args = {},
				stream = nil,
				ignore_exitcode = false,
				env = nil,
				parser = require("lint.parser").for_sarif(),
			}
		end,
	},
	{
		"stevearc/conform.nvim",
		config = function()
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			})
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					zig = { "zigfmt" },
				},
			})
		end,
	},
}
