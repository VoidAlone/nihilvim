local header_file = vim.fn.stdpath("config") .. "/lua/config/themes/headers2.txt"

return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    enabled = true,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        bigfile = {
            enabled = true,
            line_length = 1500,
        },
        dashboard = {
            enabled = true,
            sections = {
                {
                    section = "terminal",
                    -- cmd = "lolcat -b " .. vim.fn.stdpath('config') .. "/lua/config/themes/headers2.txt",
                    cmd = "cat " .. vim.fn.stdpath("config") .. "/lua/config/themes/1h.txt",
                    -- cmd = 'lolcat -f -b -g 6c17b6:ff5e00 ' .. header_file,
                    pty = false,
                    indent = -5,
                    height = 8,
                    width = 80,
                    padding = 1,
                },
                { section = "keys", gap = 1, padding = 1 },
                { section = "startup" },
            },
        },
        explorer = { },
        indent = { },
        input = { },
        picker = { },
        notifier = {},
        quickfile = { },
        scope = { },
        scroll = { },
        statuscolumn = { },
        words = { },
        toggle = { },
    },
}
