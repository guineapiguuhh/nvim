---@type NvimConfig
return {
	colorscheme = "everforest",

	keys = {
		{ "'", "<Cmd>:Oil<CR>", desc = "open Oil", mode = "n" },

		{ "<Esc>", "<Esc><Cmd>noh<CR>", mode = { "n", "v" } },

		{ "<Left>", "<c-w>h", mode = { "n", "v", "i" } },
		{ "<Down>", "<c-w>j", mode = { "n", "v", "i" } },
		{ "<Up>", "<c-w>k", mode = { "n", "v", "i" } },
		{ "<Right>", "<c-w>l", mode = { "n", "v", "i" } },

		{ "<leader>n", group = "notifications" },
		{ "<leader>nn", "<Cmd>:NoiceFzf<CR>", desc = "show notifications", mode = "n" },
		{ "<leader>nc", "<Cmd>:NoiceDismiss<CR>", desc = "clear notifications", mode = "n" },

		{ "<leader>f", group = "file" },
		{ "<leader>ff", "<Cmd>:FzfLua files<CR>", desc = "open file finder", mode = "n" },

		{ "s", group = "surround" },
		{ "sa", desc = "Add surrounding", mode = { "n", "v" } },
		{ "sd", desc = "Delete surrounding", mode = { "n", "v" } },
		{ "sf", desc = "Find surrounding (to the right)", mode = { "n", "v" } },
		{ "sF", desc = "Find surrounding (to the left)", mode = { "n", "v" } },
		{ "sh", desc = "Highlight surrounding", mode = { "n", "v" } },
		{ "sr", desc = "Replace surrounding", mode = { "n", "v" } },
	},

	config = function()
		vim.o.wrap = false
		vim.o.clipboard = "unnamedplus"
		vim.o.fileformats = "dos"
		vim.o.relativenumber = true
		vim.o.termguicolors = true

		vim.diagnostic.config({
			signs = {
				text = {
					"",
					"",
					"",
					"",
				},
			},
		})

		if vim.g.neovide then
			vim.g.neovide_window_blurred = false
			vim.g.neovide_floating_blur_amount_x = 0.0
			vim.g.neovide_floating_blur_amount_y = 0.0
			vim.o.guifont = "JetBrainsMono NF:h13"
		end
	end,
}
