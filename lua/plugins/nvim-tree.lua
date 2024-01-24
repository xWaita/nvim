return {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons',
    },
    lazy = false, -- setup is very inexpensive, so there is no performance benefit to lazy load
    config = function()
        require('nvim-tree').setup {}
        vim.keymap.set('n', '<leader>t', require('nvim-tree.api').tree.toggle, { desc = 'Toggle tree' })
    end,
}
