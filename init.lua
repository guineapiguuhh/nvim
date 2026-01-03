--<lazy>
require("config.lazy")

--<lsp>
require("lsp")

--<appearance>
if vim.g.neovide then
	vim.o.guifont = "JetBrainsMonoNL NF:h13"
end
vim.diagnostic.config({ virtual_text = true })
vim.o.number = true

--<fmt>
vim.o.shiftwidth = 4 --default: 4
vim.o.tabstop = 4 --default: 4

local languages = require("languages")
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
vim.keymap.set({ "n", "i", "v" }, "<C-z>", "<Cmd>:undo<cr>")
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Cmd>:w<CR>")
