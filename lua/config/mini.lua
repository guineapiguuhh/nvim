require("mini.basics").setup({
    options = {
        basic = true,
        extra_ui = false,
    },
    mappings = {
        basic = false,
    },
})

require("mini.comment").setup()

require("mini.cursorword").setup({ delay = 1000 })

require("mini.icons").setup()
require("mini.icons").mock_nvim_web_devicons()

require("mini.pairs").setup()

require("mini.surround").setup()
