local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {'akinsho/toggleterm.nvim', version = "*", config = true}
}
require("lazy").setup(plugins, opts)

require("toggleterm").setup{
    direction = "horizontal",
    size = 90,
    open_mapping = [[<M-j>]]
}

vim.keymap.set('n', '<leader>f', 
    require('telescope.builtin').current_buffer_fuzzy_find, 
    { desc = '[/] Fuzzily search in current buffer'}
)
vim.keymap.set('n', '<leader>p', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })

vim.cmd.colorscheme "catppuccin"
vim.opt.clipboard = unnamedplus
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.number = true
