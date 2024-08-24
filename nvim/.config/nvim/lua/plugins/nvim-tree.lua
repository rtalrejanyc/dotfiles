return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local function on_attach(bufnr)
            local api = require('nvim-tree.api')
            api.config.mappings.default_on_attach(bufnr)
        end
        local nvim_tree = require('nvim-tree')
        nvim_tree.setup {
            update_cwd = true,
            on_attach = on_attach
        }
    end,
}
