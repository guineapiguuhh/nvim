---@type LazyPluginSpec
return {
	"saghen/blink.cmp",

	version = "1.*",
	opts = {
		keymap = { preset = "default" },
		signature = { enabled = true, window = { show_documentation = false } },

		appearance = {
			nerd_font_variant = "default",
		},

		completion = {
			keyword = {
				range = "full",
			},
			menu = {
				draw = {
					components = {
						kind_icon = {
							text = function(ctx)
								local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
								return kind_icon
							end,
							highlight = function(ctx)
								local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
								return hl
							end,
						},
						kind = {
							highlight = function(ctx)
								local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
								return hl
							end,
						},
					},
				},
			},
		},

		sources = {
			default = { "lazydev", "lsp", "path", "buffer" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					score_offset = 100,
				},
			},
		},
		fuzzy = { implementation = "rust" },
	},

	opts_extend = { "sources.default" },
}
