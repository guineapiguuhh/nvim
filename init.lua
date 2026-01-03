--<lazy>
require("config.lazy")

--<lsp>
require("config.lsp")

--<appearance>
if vim.g.neovide then
	vim.g.neovide_window_blurred = false
	vim.g.neovide_floating_blur_amount_x = 0.0
	vim.g.neovide_floating_blur_amount_y = 0.0
	vim.o.guifont = "JetBrainsMonoNL NF:h13"
end
vim.diagnostic.config({ virtual_text = true })
vim.o.number = true

--<fmt>
vim.o.shiftwidth = 4 --default: 4
vim.o.tabstop = 4 --default: 4

local languages = require("config.languages")
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		local language = languages[vim.bo.filetype]
		if language then
			vim.o.shiftwidth = language.shiftwidth or vim.o.shiftwidth
			vim.o.tabstop = language.tabstop or vim.o.tabstop
		end
	end,
})

--<keybinds>
require("config.keybinds")
