require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = ";", right = ";" },
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
                "RecordingLeave",
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
		lualine_a = { "mode" },
		lualine_c = {
			{
				"filename",
                file_status = true,
                newfile_status = true,

				symbols = {
					modified = "*",
					readonly = "$",
					unnamed = "---",
					newfile = "+",
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
