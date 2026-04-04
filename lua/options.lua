if vim.g.neovide then
	vim.o.guifont = "FiraCode Nerd Font:h13"

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

local colorscheme = "onedark"
vim.cmd.colorscheme(colorscheme)

require("conform").setup({
	formatters_by_ft = {
		zig = { "zigfmt" },
		lua = { "stylua" },
		rust = { "rustfmt" },
		yaml = { "yamlfmt" },
		csharp = { "csharpier" },
		go = { "gofmt" },
		json = { "jq" },
		toml = { "tombi" },
		gleam = { "gleam" },
		odin = { "odinfmt" },
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
	"ols",
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

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "│", right = "│" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		always_show_tabline = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
			refresh_time = 16,
			events = {
				"WinEnter",
				"BufEnter",
				"BufWritePost",
				"SessionLoadPost",
				"FileChangedShellPost",
				"VimResized",
				"Filetype",
				"CursorMoved",
				"CursorMovedI",
				"ModeChanged",
			},
		},
	},
	sections = {
		lualine_c = {
			{
				"filename",
				symbols = {
					modified = "*",
				},
			},
		},
		lualine_x = {
			{
				require("noice").api.status.command.get,
				cond = require("noice").api.status.command.has,
			},
			{
				require("noice").api.status.mode.get,
				cond = require("noice").api.status.mode.has,
			},
			{
				require("noice").api.status.search.get,
				cond = require("noice").api.status.search.has,
			},
		},
	},
})
