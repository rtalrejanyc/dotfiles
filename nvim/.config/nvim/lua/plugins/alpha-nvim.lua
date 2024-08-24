return {
    'goolord/alpha-nvim',
    dependencies = { 'echasnovski/mini.icons' },
    config = function()
        local alpha = require 'alpha'
        local startify = require 'alpha.themes.startify'
        -- local alpha = require('alpha')
        --
        --
        --
        startify.section.top_buttons.val = {
            startify.button("n", "  New file", ":enew <BAR> startinsert <CR>"),
            startify.button("f", "  Find file", ":Telescope find_files<CR>"),
        }

        startify.section.bottom_buttons.val = {
            startify.button("q", "󰈆  Quit", ":qa<CR>"),
        }
        alpha.setup(startify.config)
    end,
}
