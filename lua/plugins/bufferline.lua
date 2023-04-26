return {
    'akinsho/bufferline.nvim',
    version = "v3.*",
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = {
        options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true -- use a "true" to enable the default, or set your own character
            },
        }
    }
    },
}
