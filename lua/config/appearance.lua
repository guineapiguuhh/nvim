if vim.g.neovide then
	vim.g.neovide_window_blurred = false
	vim.g.neovide_floating_blur_amount_x = 0.0
	vim.g.neovide_floating_blur_amount_y = 0.0
	vim.o.guifont = "JetBrainsMonoNL NF:h12.5"
end

local colorscheme = "dracula"
vim.diagnostic.config({ virtual_text = true })
vim.o.number = true
require("mini.icons").setup()

vim.cmd("colorscheme " .. colorscheme)
require("lualine").setup({
	options = { theme = require("lualine.themes." .. colorscheme) },
})

local dashboard = require("alpha.themes.dashboard")
require("alpha").setup(dashboard.config)

local pattern = {}
for key, value in pairs(require("config.languages")) do
	if value.use_treesitter then
		table.insert(pattern, key)
	end
end
if #pattern == 0 then
	pattern = nil
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = pattern,
	callback = function()
		vim.treesitter.start()
	end,
})
