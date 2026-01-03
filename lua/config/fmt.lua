local languages = require("config.languages")
local conform = require("conform")

vim.o.shiftwidth = 4 --default: 4
vim.o.tabstop = 4 --default: 4

local formatters_by_ft = {}
for key, value in pairs(languages) do
	if value.fmt then
		formatters_by_ft[key] = value.fmt
	end
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		local language = languages[vim.bo.filetype]
		if language then
			vim.o.shiftwidth = language.shiftwidth or vim.o.shiftwidth
			vim.o.tabstop = language.tabstop or vim.o.tabstop
		end
	end,
})

conform.setup({
	formatters_by_ft = formatters_by_ft,
})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		conform.format({ bufnr = args.buf })
	end,
})
