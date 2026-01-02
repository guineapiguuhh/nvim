vim.lsp.config["lua_ls"] = {
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
}
vim.lsp.enable("lua_ls")

vim.lsp.config["zls"] = {
	cmd = { "zls" },
	filetypes = { "zig", "zir" },
	root_markers = { "build.zig", ".git" },
	settings = {},
}
vim.lsp.enable("zls")
