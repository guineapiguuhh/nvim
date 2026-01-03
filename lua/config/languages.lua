return {
	lua = {
		fmt = { "stylua" },
		lsp_name = "lua_ls",
		lsp_config = {
			cmd = { "lua-language-server" },
			filetypes = { "lua" },
			root_markers = { ".git" },
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
				},
			},
		},
		shiftwidth = 4,
		tabstop = 4,
	},
	zig = {
		fmt = { "zigfmt" },
		use_treesitter = true,
		linters = { "zlint" },
		lsp_name = "zls",
		lsp_config = {
			filetypes = { "zig", "zir" },
			cmd = { "zls" },
			root_markers = { "build.zig.zor", "build.zig", ".git" },
			settings = {},
		},
		shiftwidth = 4,
		tabstop = 4,
	},
	gleam = {
		fmt = { "gleam" },
		use_treesitter = true,
		lsp_name = "gleam",
		lsp_config = {
			filetypes = { "gleam" },
			cmd = { "gleam", "lsp" },
			root_markers = { "gleam.toml", "manifest.toml", ".git" },
			settings = {},
		},
		shiftwidth = 2,
		tabstop = 2,
	},
	toml = {
		fmt = { "tombi" },
		linters = { "tombi" },
		lsp_name = "tombi",
		lsp_config = {
			filetypes = { "toml" },
			cmd = { "tombi", "lsp" },
			settings = {},
		},
	},
	json = {
		fmt = { "jq" },
		use_treesitter = true,
		linters = { "jsonlint" },
		lsp_name = "jsonls",
		lsp_config = {
			filetypes = { "json", "jsonc" },
			cmd = { "vscode-json-language-server", "--stdio" },
			root_markers = { ".git" },
			settings = {},
		},
	},
}
