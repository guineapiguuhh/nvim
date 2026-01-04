local function set(mode, lhs, rhs, opts)
	vim.keymap.set(mode, lhs, rhs, opts or { remap = true })
end

-- delete default keybinds
set("n", "i", "<Nop>")
set("n", "u", "<Nop>")

-- custom bindings
set("n", "f", "<Cmd>:Pick files<CR>")

set("n", "'", "<Cmd>:Oil<CR>")

set("v", ";", "<Cmd>:norm gcc<CR>", { desc = "Toggle comment" })
set("n", ";", "<Cmd>:norm gcc<CR>", { desc = "Toggle comment" })

set("n", "z", "<Cmd>:undo<cr>")
set("n", "s", "<Cmd>:w<CR>")
