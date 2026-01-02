--<lazy>
require("config.lazy")

--<lsp>
require("lsp")

--<appearance>
if vim.g.neovide then
	vim.o.guifont = "JetBrainsMonoNL NF:h13.35"
end
vim.diagnostic.config({ virtual_text = true })
vim.o.number = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

--<keybinds>
vim.keymap.set({ "n", "i", "v" }, "<C-z>", "<Cmd>:undo<cr>")
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Cmd>:w<CR>")
