return {
	{
		"stevearc/conform.nvim",
		config = function()
			local conform = require("conform")

			local formatters_by_ft = {}
			for key, value in pairs(require("languages")) do
				if value.fmt then
					formatters_by_ft[key] = value.fmt
				end
			end
			formatters_by_ft.lua = {"stylua"};

			conform.setup({
				formatters_by_ft = formatters_by_ft,
			})
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					conform.format({ bufnr = args.buf })
				end,
			})
		end,
	},
}
