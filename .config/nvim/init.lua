--[[ Instructions ]]
-- 1. git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
-- 2. Open ~/.config/nvim/init.lua
-- 3. :PackerSync

--[[ Plugins ]]
require('plugins')

--[[ Plugins Setup ]]
require('plugins/configs/nvim-treesitter')
require('plugins/configs/nvim-tree')
require('plugins/configs/lualine')
require('plugins/configs/nvim-cmp') -- Setup nvim-cmp and lspconfig

--[[ Options ]]
vim.opt.encoding = "utf-8"
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.laststatus = 2
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "80"
vim.cmd('highlight ColorColumn ctermbg=0 guibg=lightgrey')
vim.opt.signcolumn = "yes"
-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
-- Searching
vim.opt.incsearch = true
vim.opt.ignorecase = true -- Search will ignore case,
vim.opt.smartcase = true -- until a capital letter is used in the search
-- Appearance
vim.opt.guicursor = {}
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.cmd('colorscheme base16-tomorrow-night-eighties')

--[[ Keymaps ]]
-- Save file
vim.keymap.set('n', '<c-s>', '<cmd>w<cr>', {})
vim.keymap.set('i', '<c-s>', '<Esc><cmd>w<cr>a', {})
-- Plugin: nvim-tree
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { noremap = true })
-- Plugin: telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true })
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true })
