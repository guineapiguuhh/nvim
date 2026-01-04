local Lint = require("lint")

local linters_by_ft = {}
for key, value in pairs(require("config.languages")) do
	if value.linters then
		linters_by_ft[key] = value.linters
	end
end
Lint.linters_by_ft = linters_by_ft

vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
	callback = function()
		Lint.try_lint()
	end,
})
