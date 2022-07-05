return require('packer').startup(function()                                            
    use 'wbthomason/packer.nvim'                                        

    -- Appearance                                                              
    use {
        'nvim-lualine/lualine.nvim',
        -- requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }                                                                                
    use 'RRethy/nvim-base16'

    -- Utilities                                                               
    use 'jiangmiao/auto-pairs'                                                  
    use {                                                                       
        'kyazdani42/nvim-tree.lua',                                             
        -- requires = { 'kyazdani42/nvim-web-devicons' } -- optional, for file icons                                                       
    }                                                                           
    use {                                                                       
        'nvim-telescope/telescope.nvim',                                        
        requires = { {'nvim-lua/plenary.nvim'} }                                
    }
    use 'nvim-treesitter/nvim-treesitter'
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
    
    -- LSP and code completion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- Snippet engine (REQUIRED for nvim-cmp setup)
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
end)
