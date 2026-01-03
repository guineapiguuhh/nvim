local map = vim.keymap

local builtin = require("telescope.builtin")
map.set("n", "f", builtin.find_files)

map.set("n", "\\", "<Cmd>:Oil<CR>")

map.set("v", ";", "<Cmd>:norm gcc<CR>", { desc = "Toggle comment" })
map.set("n", ";", "<Cmd>:norm gcc<CR>", { desc = "Toggle comment" })

map.set({ "n", "i", "v" }, "<C-z>", "<Cmd>:undo<cr>")
map.set({ "n", "i" }, "<C-s>", "<Cmd>:w<CR>")
