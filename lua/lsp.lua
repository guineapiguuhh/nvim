for _, value in pairs(require("languages")) do
	vim.lsp.config[value.lsp_name] = value.lsp_config
	vim.lsp.enable(value.lsp_name)
end
