return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
    config = function()
        local wk = require("which-key")
        local mappings = {
            { "<leader>b",  "<cmd>Telescope buffers<cr>",    desc = "Buffers" },
            { "<leader>f",  "<cmd>Telescope find_files<cr>", desc = "Find File" },
            { "<leader>l",  group = "LSP" },
            { "<leader>lf", "<cmd>LspZeroFormat<cr>",        desc = "Format" },
            { "<leader>w",  "<cmd>w<cr>",                    desc = "Write" },
            { "<leader>q",  "<cmd>q!<cr>",                   desc = "Quit" },
            { "<leader>e",  "<cmd>NvimTreeToggle<cr>",       desc = "Explorer" },
        }
        wk.add({
            { mode = { "n" }, mappings },
        })
    end,
}
