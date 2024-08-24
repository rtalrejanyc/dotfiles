return {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function()
        local comment = require("Comment")
        comment.setup({
            toggler = {
                line = "<c-/>",
            },
            opleader = {
                line = "<c-/>",
            }
        })
    end,
}
