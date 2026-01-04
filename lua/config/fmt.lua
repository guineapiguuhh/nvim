local Languages = require("config.languages")
local Conform = require("conform")

require("mini.pairs").setup({
	modes = { insert = true, command = false, terminal = false },
	mappings = {
		["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]." },
		["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\]." },
		["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]." },

		['"'] = { action = "closeopen", pair = '""', neigh_pattern = "[^\\].", register = { cr = false } },
		["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^%a\\].", register = { cr = false } },
		["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\].", register = { cr = false } },
	},
})

vim.o.shiftwidth = 4 --default: 4
vim.o.tabstop = 4 --default: 4

local formatters_by_ft = {}
for key, value in pairs(Languages) do
	if value.fmt then
		formatters_by_ft[key] = value.fmt
	end
end
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		local language = Languages[vim.bo.filetype]
		if language then
			vim.o.shiftwidth = language.shiftwidth or vim.o.shiftwidth
			vim.o.tabstop = language.tabstop or vim.o.tabstop
		end
	end,
})

Conform.setup({
	formatters_by_ft = formatters_by_ft,
})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		Conform.format({ bufnr = args.buf })
	end,
})
