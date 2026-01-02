require("config.lazy")

---<lsp>
require("lsp")

--<appearance>
if vim.g.neovide then
	vim.o.guifont = "JetBrainsMonoNL NF:h14"
end

vim.o.number = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

--<keybinds>
vim.keymap.set({ "n", "i", "v" }, "<C-z>", "<Cmd>:undo<CR>")
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Cmd>:w<CR>")
