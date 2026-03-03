local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
	spec = {
		{ import = "plugins" },
		{ import = "colorschemes" },
	},
	checker = { enabled = true },
})
require("mason").setup()

vim.utils = require("utils")
vim.notify = require("notify")
vim.languages = require("languages")
vim.languages.setup({
	imports = {
		"languages",
	},
})

local config = require("config")
if config.init then
	config.init()
end
for _, lang in pairs(vim.languages.get_langs()) do
	if not lang.lsp then
		goto continue
	end
	vim.lsp.enable(lang.lsp)
	::continue::
end

if config.colorscheme then
	vim.cmd("colorscheme " .. (config.colorscheme or "onedark"))
end
if config.keys then
	require("which-key").add(config.keys, nil)
end
if config.config then
	config.config()
end

-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = vim.languages.keys(),
-- 	callback = function()
-- 		pcall(vim.treesitter.start)
--
-- 		local format = vim.languages.get_format(vim.bo.filetype)
-- 		if not format then
-- 			return
-- 		end
-- 		vim.opt_local.shiftwidth = format.shiftwidth
-- 		vim.opt_local.tabstop = format.tabstop
-- 		vim.opt_local.expandtab = not format.spaces
-- 	end,
-- })

local Conform = require("conform")
Conform.setup({ formatters_by_ft = vim.languages.get_formatters() })
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		Conform.format({ bufnr = args.buf })
	end,
})
