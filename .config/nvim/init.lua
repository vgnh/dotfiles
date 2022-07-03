--[[ Instructions
    1. git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    2. Open ~/.config/nvim/init.lua
    3. :PackerSync
]]

--[[ Plugins ]]
-- Plugins to install
-- 1. nvim-lspconfig, nvim-compe -> replace Ale, coc.nvim
-- 2. gitsigns -> replaces vim-gitgutter                                                              
require('packer').startup(function()                                            
    use 'wbthomason/packer.nvim'                                        

    -- Appearance                                                              
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }                                                                                
    use 'RRethy/nvim-base16'

    -- Utilities                                                               
    use 'sheerun/vim-polyglot'                                                  
    use 'jiangmiao/auto-pairs'                                                  
    use {                                                                       
        'kyazdani42/nvim-tree.lua',                                             
        requires = {                                                            
            'kyazdani42/nvim-web-devicons' -- optional, for file icons         
        }                                                       
    }                                                                           
    use {                                                                       
        'nvim-telescope/telescope.nvim',                                        
        requires = { {'nvim-lua/plenary.nvim'} }                                
    }
    
    -- LSP
    use 'neovim/nvim-lspconfig'
end)

--[[ Plugins Setup ]]
require('nvim-tree').setup {
    view = {
        width = 25
    },
    disable_netrw = true,
    hijack_cursor = true,
    renderer = {
        indent_markers = {
            enable = true
        }
    }
}
require('lualine').setup {
    options = {
        theme = 'auto'
    }
}
require('lspconfig').gopls.setup{}

--[[ Options ]]
vim.opt.guicursor = {}
vim.opt.encoding = "utf-8"
vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.errorbells = false
vim.opt.wrap = false
vim.opt.incsearch = true
vim.opt.colorcolumn = "80"
vim.cmd('highlight ColorColumn ctermbg=0 guibg=lightgrey')
vim.opt.signcolumn = "yes"

--[[ Appearance ]]
vim.opt.termguicolors = true
vim.cmd('colorscheme base16-tomorrow-night-eighties')

--[[ Keymaps ]]
-- Save file
vim.keymap.set('n', '<c-s>', ':w<CR>', {})
vim.keymap.set('i', '<c-s>', '<Esc>:w<CR>a', {})
-- Plugin: NvimTree
vim.keymap.set('n', '<leader>f', ':NvimTreeToggle<CR>', { noremap = true })
