if vim.g.neovide then
	vim.g.neovide_window_blurred = false
	vim.g.neovide_floating_blur_amount_x = 0.0
	vim.g.neovide_floating_blur_amount_y = 0.0
	vim.o.guifont = "JetBrainsMonoNL NF:h13"
end

local colorscheme = "onedark"
vim.diagnostic.config({ virtual_text = true })
vim.o.number = true

vim.cmd("colorscheme " .. colorscheme)
require("lualine").setup({
	options = { theme = require("lualine.themes." .. colorscheme) },
})

local dashboard = require("alpha.themes.dashboard")
require("alpha").setup(dashboard.config)
