for _, value in pairs(require("config.languages")) do
	vim.lsp.config[value.lsp_name] = value.lsp_config
	vim.lsp.enable(value.lsp_name)
end

for lsp, link in pairs({
	["@lsp.type.class"] = "@type",
	["@lsp.type.decorator"] = "@function",
	["@lsp.type.enum"] = "@type",
	["@lsp.type.enumMember"] = "@constant",
	["@lsp.type.function"] = "@function",
	["@lsp.type.interface"] = "@type",
	["@lsp.type.macro"] = "@macro",
	["@lsp.type.method"] = "@method",
	["@lsp.type.namespace"] = "@namespace",
	["@lsp.type.parameter"] = "@parameter",
	["@lsp.type.property"] = "@property",
	["@lsp.type.struct"] = "@structure",
	["@lsp.type.type"] = "@type",
	["@lsp.type.variable"] = "@variable",
}) do
	vim.api.nvim_set_hl(0, lsp, { link = link, default = true })
end
