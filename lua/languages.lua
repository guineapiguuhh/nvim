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
	},
	zig = {
		fmt = { "zigfmt" },
		lsp_name = "zls",
		lsp_config = {
			filetypes = { "zig", "zir" },
			cmd = { "zls" },
			root_markers = { "build.zig.zor", "build.zig", ".git" },
			settings = {},
		},
	},
	gleam = {
		fmt = { "gleam" },
		lsp_name = "gleam",
		lsp_config = {
			filetypes = { "gleam" },
			cmd = { "gleam", "lsp" },
			root_markers = { "gleam.toml", "manifest.toml", ".git" },
			settings = {},
		},
		shiftwidth = 2,
	},
}
