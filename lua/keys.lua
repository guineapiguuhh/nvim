local WhichKey = require("which-key")

WhichKey.add({
	{ "'", "<Cmd>:Oil<CR>", desc = "open Oil", mode = "n" },
	{ "<Esc>", "<Esc><Cmd>noh<CR>", mode = { "n", "v" } },

	{ "<leader>w", "<Cmd>w<CR>", desc = "write buffer", mode = "n" },

	{ "<Left>", "<c-w>h", mode = { "n", "v", "i" } },
	{ "<Down>", "<c-w>j", mode = { "n", "v", "i" } },
	{ "<Up>", "<c-w>k", mode = { "n", "v", "i" } },
	{ "<Right>", "<c-w>l", mode = { "n", "v", "i" } },

	{ "<c-u>", "<c-u>zz", mode = { "n" } },
	{ "<c-d>", "<c-d>zz", mode = { "n" } },

	{ "<leader>n", group = "notifications" },
	{ "<leader>nn", "<Cmd>NoiceFzf<CR>", desc = "show notifications", mode = "n" },
	{ "<leader>nc", "<Cmd>NoiceDismiss<CR>", desc = "clear notifications", mode = "n" },

	{ "<leader>f", group = "Fzf" },
	{ "<leader>fg", "<Cmd>FzfLua live_grep<CR>", desc = "open FzF file finder", mode = "n" },
	{ "<leader>ff", "<Cmd>FzfLua files<CR>", desc = "open FzF file finder", mode = "n" },
	{ "<leader>fb", "<Cmd>FzfLua buffers<CR>", desc = "open FzF buffers", mode = "n" },

	{ "s", group = "surround" },
	{ "sa", desc = "Add surrounding", mode = { "n", "v" } },
	{ "sd", desc = "Delete surrounding", mode = { "n", "v" } },
	{ "sf", desc = "Find surrounding (to the right)", mode = { "n", "v" } },
	{ "sF", desc = "Find surrounding (to the left)", mode = { "n", "v" } },
	{ "sh", desc = "Highlight surrounding", mode = { "n", "v" } },
	{ "sr", desc = "Replace surrounding", mode = { "n", "v" } },

    -- Treesitter text objects
    {
        "af",
        function ()
            require("nvim-treesitter-textobjects.select")
            .select_textobject("@function.outer", "textobjects")
        end,
        mode = { "x", "o" },
    },
    {
        "if",
        function ()
            require("nvim-treesitter-textobjects.select")
            .select_textobject("@function.inner", "textobjects")
        end,
        mode = { "x", "o" },
    },
    {
        "ac",
        function ()
            require("nvim-treesitter-textobjects.select")
            .select_textobject("@class.outer", "textobjects")
        end,
        mode = { "x", "o" },
    },
    {
        "ic",
        function ()
            require("nvim-treesitter-textobjects.select")
            .select_textobject("@class.inner", "textobjects")
        end,
        mode = { "x", "o" },
    },
    {
        "<leader>a",
        function ()
            require("nvim-treesitter-textobjects.swap")
            .swap_next("@parameter.inner")
        end,
        mode = { "n" },
    },
    {
        "<leader>A",
        function ()
            require("nvim-treesitter-textobjects.swap")
            .swap_previous("@parameter.outer")
        end,
        mode = { "n" },
    },
}, {})
