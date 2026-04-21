if vim.g.neovide then
    vim.o.guifont = "Iosevka NFM:h14.5"
	vim.g.neovide_window_blurred = false
	vim.g.neovide_floating_shadow = false
	vim.g.neovide_floating_blur_amount_x = 0
	vim.g.neovide_floating_blur_amount_y = 0
	vim.g.neovide_cursor_animation_length = 0
	vim.g.neovide_position_animation_length = 0
	vim.g.neovide_scroll_animation_length = 0
	vim.g.neovide_confirm_quit = false
end
vim.o.swapfile = false

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true

vim.o.cursorline = true
vim.o.signcolumn = "yes:1"
vim.o.showcmd = false

vim.o.clipboard = "unnamedplus"
vim.o.fileformats = "dos"
vim.o.relativenumber = true
vim.o.termguicolors = true

local colorscheme = "monokai-pro"
vim.cmd.colorscheme(colorscheme)

vim.lsp.enable({
	"jsonls",
	"yamlls",
	"tombi",

	"ols",
	"gopls",
	"csharp_ls",
	"lua_ls",
})

vim.diagnostic.config({
	signs = {
		text = {
			"",
			"",
			"",
			"󰌶",
		},
	},
})
