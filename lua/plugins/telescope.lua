return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>f', builtin.current_buffer_fuzzy_find, { desc = 'Fuzzily search in current buffer'})
        vim.keymap.set('n', '<leader>o', builtin.find_files, { desc = 'Search files' })
        vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Live grep' })
        vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Buffers' })
    end,
}
