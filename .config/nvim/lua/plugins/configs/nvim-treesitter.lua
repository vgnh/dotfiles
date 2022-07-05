require('nvim-treesitter.configs').setup {
    ensure_installed = "all", -- Can also be set to 'all'     
    highlight = {
        enable = true, -- 'false' will disable the extension
        disable = {}              
    }
}
