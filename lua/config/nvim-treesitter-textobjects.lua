vim.g.no_plugin_maps = true

require("nvim-treesitter-textobjects").setup({
    select = {
        lookahead = true,
        selection_modes = {},
        include_surrounding_whitespace = false,
    },
})
