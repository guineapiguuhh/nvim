---@type LazyPluginSpec
return {
	"saghen/blink.cmp",

	version = "1.*",
	dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
	opts = {
		keymap = { preset = "default" },
		fuzzy = { implementation = "rust" },
		snippets = { preset = "luasnip" },
		signature = { enabled = true, window = { show_documentation = false } },

		appearance = {
			nerd_font_variant = "default",
		},

		sources = {
			default = { "lazydev", "lsp", "path", "buffer", "snippets" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					score_offset = 100,
				},
			},
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
	},

	opts_extend = { "sources.default" },
}
