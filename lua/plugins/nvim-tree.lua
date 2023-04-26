return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
        lazy = true,
    },
    config = {
        sort_by = "case_sensitive",
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
    }
}
