if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono NF:h13"

	vim.g.neovide_window_blurred = false
	vim.g.neovide_floating_shadow = false
	vim.g.neovide_floating_blur_amount_x = 0
	vim.g.neovide_floating_blur_amount_y = 0
	vim.g.neovide_cursor_animation_length = 0
	vim.g.neovide_position_animation_length = 0
	vim.g.neovide_scroll_animation_length = 0
	vim.g.neovide_confirm_quit = false
end
vim.o.wrap = false
vim.o.clipboard = "unnamedplus"
vim.o.fileformats = "dos"
vim.o.relativenumber = true
vim.o.termguicolors = true

local colorscheme = nil
vim.cmd.colorscheme(colorscheme or "onedark")

require("conform").setup({
	formatters_by_ft = {
		zig = { "zigfmt" },
		lua = { "stylua" },
		rust = { "rustfmt" },
		yaml = { "yamlfmt" },
		csharp = { "csharpier" },
		go = { "gofmt" },
		java = { "google-java-format" },
		json = { "jq" },
		toml = { "tombi" },
		gleam = { "gleam" },
	},
})

vim.lsp.enable({
	"lua_ls",
	"gleam",
	"csharp_ls",
	"gopls",
	"jdtls",
	"jsonls",
	"rust_analyzer",
	"tombi",
	"yamlls",
	"zls",
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
