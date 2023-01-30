return {
    event = 'BufReadPre',
    module = 'persistence',
    config = function()
        require'persistence'.setup {}
    end,
    keybindings = {
        n = {
            {
                -- restore last session for current directory
                key = "<leader>qs",
                lua = "require('persistence').load()"
            },
            {
                -- restore last session
                key = "<leader>ql",
                lua = "require('persistence').load({last = true})"
            },
            {
                -- stop persistence => Session won't be saved on exit
                key = "<leader>qd",
                lua = "require('persistence').stop()"
            }
        }
    }
}
