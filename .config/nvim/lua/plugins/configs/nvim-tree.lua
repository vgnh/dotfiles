require('nvim-tree').setup {
    view = {
        width = 25
    },
    disable_netrw = true,
    renderer = {
        indent_markers = {
            enable = true
        },
        icons = {
            show = {
                file = false,
                folder = false,
                folder_arrow = false,
                git = false
            }
        }
    }
}
