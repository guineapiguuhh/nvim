require("config.lazy")

---<lsp>
require("lsp")

--<appearance>
if vim.g.neovide then
	vim.o.guifont = "JetBrainsMonoNL NF:h13.65"
end

vim.diagnostic.config({ virtual_text = true })
vim.o.number = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

--<keybinds>
vim.keymap.set("n", "<C-\\>", ":Neotree toggle<CR>")

vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>")

vim.keymap.set({ "n", "i", "v" }, "<c-z>", "<cmd>:undo<cr>")
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Cmd>:w<CR>")
