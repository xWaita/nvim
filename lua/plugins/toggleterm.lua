return {
    'akinsho/toggleterm.nvim', 
    config = function()
        toggleterm = require('toggleterm')
        toggleterm.setup{
            direction = 'horizontal',
            size = 90,
            open_mapping = [[<leader>j]]
        }
    end,
}
