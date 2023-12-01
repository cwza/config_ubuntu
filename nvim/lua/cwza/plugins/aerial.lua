return {
    "stevearc/aerial.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local aerial = require("aerial")
        aerial.setup({})

        vim.keymap.set("n", "<leader>aa", "<cmd>AerialToggle!<CR>")
    end,
}
