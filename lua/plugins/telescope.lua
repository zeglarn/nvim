return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        {"nvim-lua/plenary.nvim"},
        {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
    },
    config = function()
        -- You dont need to set any of these options. These are the default ones. Only
        -- the loading is important
        require('telescope').setup {
            extensions = {
                fzf = {
                    fuzzy = true,                    -- false will only do exact matching
                    override_generic_sorter = true,  -- override the generic sorter
                    override_file_sorter = true,     -- override the file sorter
                    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                }
            }
        }
        -- To get fzf loaded and working with telescope, you need to call
        -- load_extension, somewhere after setup function:
        require('telescope').load_extension('fzf')
        local wk = require('which-key')
        wk.register({
            f = {
                name = "find",
                f = { "<CMD>Telescope find_files<CR>", "Find files" },
                l = { "<CMD>Telescope live_grep<CR>", "Live grep"},
                b = { "<CMD>Telescope buffers<CR>", "Find buffers"},
            },
        }, {prefix = '<leader>'})
    end,
--    keys = {
--        { "<leader>ff", "<CMD>Telescope find_files<CR>", desc = "Find files"},
--        { "<leader>fl", "<CMD>Telescope live_grep<CR>", desc = "Live grep"},
--        { "<leader>fb", "<CMD>Telescope buffers<CR>", desc = "Find buffers"},
--    }
}
