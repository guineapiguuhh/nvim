vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		pcall(vim.treesitter.start)
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function()
		local WhichKey = require("which-key")
		WhichKey.add({
			{ "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", mode = { "n" } },
			{ "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", mode = { "n" } },
		}, {})
	end,
})
