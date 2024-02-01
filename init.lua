-- must be set before plugins
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.loaded_netrw = 1 -- disable for nvim-tree
vim.g.loaded_netrwPlugin = 1 -- disable for nvim-tree

-- lazy.nvim install
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- load plugins
local plugins = {
    { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
    { 'neovim/nvim-lspconfig' },
    { 'f-person/git-blame.nvim' },

    { import = 'plugins' }, -- import all plugins from lua/plugins
}
require('lazy').setup(plugins, opts)

-- swap jumplist commands
vim.keymap.set('n', '<c-i>', '<c-o>', {})
vim.keymap.set('n', '<c-o>', '<c-i>', {})

-- nvim options
vim.cmd.colorscheme 'catppuccin'
vim.opt.clipboard = unnamedplus
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.termguicolors = true
